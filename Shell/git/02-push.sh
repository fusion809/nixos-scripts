# Push changes
function push {

    if `printf "$PWD" | grep 'AUR' > /dev/null 2>&1`; then
         mksrcinfo
    elif `printf "$PWD" | grep 'fusion809-overlay' > /dev/null 2>&1`; then
         pushd $HOME/fusion809-overlay && sudo repoman manifest -q && popd
    fi

    git add --all                                        # Add all files to git
    git commit -m "$1"                                   # Commit with message = argument 1
    git push origin $(git-branch)                        # Push to the current branch

}

function pusha {

    git add --all
    git commit
    git push origin $(git-branch)

}
