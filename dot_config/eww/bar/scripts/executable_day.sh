#!/usr/bin/env bash
d=$(date +%-d)

if [ $d -ge 11 ] && [ $d -le 13 ]; then
    suf=th
else
    case $((d % 10)) in
    1) suf=st ;;
    2) suf=nd ;;
    3) suf=rd ;;
    *) suf=th ;;
    esac
fi

echo "$d$suf"
