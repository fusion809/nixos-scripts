# Edit C source file
function vc {
    vim *.c
}

# Edit C++ source file
function vcpp {
    vim *.cpp
}

# Edit ebuild file(s)
function ved {
    vim *.ebuild
}

# Edit gitignore
function vgit {
    if [[ -d .git ]]; then
         vim .gitignore
    elif [[ -d ../.git ]]; then
         vim ../.gitignore
    elif [[ -d ../../.git ]]; then
         vim ../../.gitignore
    elif [[ -d ../../../.git ]]; then
         vim ../../../.gitignore
    elif [[ -d ../../../../.git ]]; then
         vim ../../../../.gitignore
    elif [[ -d ../../../../../.git ]]; then
         vim ../../../../../.gitignore
    elif [[ -d ../../../../../../.git ]]; then
         vim ../../../../../../.gitignore
    elif [[ -d ../../../../../../../.git ]]; then
         vim ../../../../../../../.gitignore
    fi
}

# Edit gnuplot file(s)
function vgp {
    vim *.gp
}

# Edit C/C++ header file
function vh {
    vim *.h
}

# Edit LICENSE file
function vlic {
    vim LICENSE
}

# Edit shell script
function vls {
    vim *.sh
}

alias vlsh=vls

# Edit m files
function vm {
    vim *.m
}

# Edit Makefiles
function vmk {
    vim Makefile
}

# Edit metadata.xml
function vmd {
    vim metadata.xml
}

# Edit PKGBUILD
function vpk {
    vim PKGBUILD
}

function vrl {
    vim *.rules
}

# Edit README or create a README.md if it doesn't exist
function vrm {
    if ls README* 1> /dev/null 2>&1; then
        vim README*
    else
        vim README.md
    fi
}

# Edit spec file
function vsp {
    vim *.spec
}

function vzt {
    vim hcompact.zsh-theme
}
