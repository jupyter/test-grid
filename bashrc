# general scripting utilities

function show_head() {
    td="$(mktemp -d)"
    repo=$1
    if [[ "$repo" != *"://"* ]]; then
      repo="https://github.com/$1"
    fi
    if [[ "$repo" == *"@"* ]]; then
      branch="-b $(echo $repo | sed s/.*@//)"
      repo=$(echo $repo | sed s/@.*//)
    fi
    git clone -q --depth 1 $branch $repo "$td"
    pushd "$td"
    echo $1
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
