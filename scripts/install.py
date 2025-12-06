#!/usr/bin/env python3
# REQUIRED: PYTHON >= 3.11.0
import tomllib
import subprocess
import sys


def eprint(*args, **kwargs):
    print(*args, file=sys.stderr, **kwargs)


def packages(pkg: list[str], manager: str, flag: str, root: bool) -> None:
    if not pkg:
        return
    try:
        cmd = ["sudo", manager, flag, *pkg] if root else [manager, flag, *pkg]
        subprocess.run(cmd, check=True)
    except subprocess.CalledProcessError as e:
        eprint(f"[ERR] Command failed: {e}")


def parse_os_release() -> dict:
    data = {}
    try:
        with open("/etc/os-release") as f:
            for line in f:
                line = line.strip()
                if not line or "=" not in line:
                    continue
                k, v = line.split("=", 1)
                data[k] = v.strip('"')
    except FileNotFoundError:
        pass
    return data


def detect_distro() -> str:
    return parse_os_release().get("ID", "").lower()


def read_toml(distro: str) -> dict:
    try:
        with open(f"./dependencies/{distro}.toml", "rb") as f:
            return tomllib.load(f)
    except Exception as e:
        eprint(f"[ERR] Cannot read toml: {e}")
        exit(1)


def main() -> None:
    distro = detect_distro()
    cfg = read_toml(distro)

    # if not cfg["option"]["idk"]:
    #     print(
    #         f"===> Sorry, not wrote the config yet.\nDistro doesn't have config: {distro}"
    #     )
    #     exit(1)

    manager = ""
    flags = {}

    if distro in ("arch", "cachyos", "endeavouros"):
        manager = "pacman"
        flags = {
            "install": "-S",
            "update": "-Syu",
            "remove": "-R",
        }

    elif distro in ("fedora", "rhel"):
        manager = "dnf"
        flags = {
            "install": "install",
            "update": "upgrade",
            "remove": "remove",
        }
    else:
        eprint(f"[ERR] Unsupported distro: {distro}")
        return

    if cfg["option"].get("update-system", False):
        packages([], manager, flags["update"], root=True)

    pkgs = cfg["mainrepo"]["pkgs"]
    packages(pkgs, manager, flags["install"], root=True)

    if distro in ("arch", "cachyos", "endeavouros"):
        aur_helper = cfg["option"]["aur"]
        aur_pkgs = cfg["aur"]["pkgs"]
        packages(aur_pkgs, aur_helper, flags["install"], root=False)
    elif distro in ("fedora"):
        print("==> COPR very very hard to write. Write later.")


if __name__ == "__main__":
    main()
