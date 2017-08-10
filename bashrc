# general scripting utilities

function show_head() {
    echo -e "\n\n\n$1\n"
    td="$(mktemp -d)"
    git clone --depth 1 "https://github.com/$1" "$td"
    pushd "$td"
    git log -1
    popd
    rm -rf "$td"
}

function install_gh() {
    branch=""
    test -z "$3" || branch="-b $3"
    git clone --depth 1 $branch https://github.com/$1/$2
    pushd $2
    git log -1
    pip install --upgrade --upgrade-strategy=only-if-needed .
    popd
    rm -rf $2
}

function install_ip() {
    install_gh ipython $@
}

function install_jp() {
    install_gh jupyter $@
}
