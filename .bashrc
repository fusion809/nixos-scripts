# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !


# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi

export PS1='\
\[\e[1m\]\
\[\e[48;5;39m\]\
 \u \
\[\e[38;5;59m\]♦ \[\e[0m\]\\
\[\e[48;5;59m\]\
 \w \[\e[0m\]\\
\[\e[38;5;59m\]\
\[\e[48;5;39m\]\
 ♦\
\[\e[0m\]\\
\[\e[48;5;34m\]\
 \$\
\[\e[48;5;39m\] \
\[\e[0m\]\
 '

# Put your fun stuff here.
for i in $HOME/Shell/*.sh
do
    . "$i"
done
