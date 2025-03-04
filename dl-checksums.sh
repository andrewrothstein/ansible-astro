#!/usr/bin/env sh
set -e
DIR=~/Downloads
MIRROR=https://github.com/astronomer/astro-cli/releases/download
APP=astro

dl() {
    local ver=$1
    local lchecksums=$2
    local os=$3
    local arch=$4
    local archive_type=${5:-tar.gz}
    local platform="${os}_${arch}"
    local file="${APP}_${ver}_${platform}.${archive_type}"
    local url="$MIRROR/v$ver/$file"
    local shasum=$(grep $file $lchecksums | awk '{print $1}')
    if [ ! -z $shasum ];
    then
        printf "    # %s\n" $url
        printf "    %s: sha256:%s\n" $platform $shasum
    fi
}

dl_ver() {
    local ver=$1
    local checksums="${APP}_${ver}_checksums.txt"
    local url="$MIRROR/v$ver/${checksums}"
    local lchecksums="$DIR/${checksums}"
    if [ ! -e $lchecksums ];
    then
        curl -sSLf -o $lchecksums $url
    fi

    printf "  # %s\n" $url
    printf "  '%s':\n" $ver

    dl $ver $lchecksums darwin amd64
    dl $ver $lchecksums darwin arm64
    dl $ver $lchecksums linux 386
    dl $ver $lchecksums linux amd64
    dl $ver $lchecksums linux arm64
    dl $ver $lchecksums windows 386 zip
    dl $ver $lchecksums windows amd64 zip
    dl $ver $lchecksums windows arm64 zip
}

dl_ver ${1:-1.33.1}
