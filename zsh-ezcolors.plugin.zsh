# From https://pthree.org/2009/12/18/add-colors-to-your-zsh-scripts/
autoload colors
if [[ "$terminfo[colors]" -gt 8 ]]; then
    colors
fi
for COLOR in RED GREEN YELLOW BLUE MAGENTA CYAN BLACK WHITE; do
    eval export $COLOR='$fg_no_bold[${(L)COLOR}]'
    eval export BOLD_$COLOR='$fg_bold[${(L)COLOR}]'
done
eval export RESET='$reset_color'
