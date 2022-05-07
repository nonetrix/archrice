export PATH="~/.local/bin:$PATH"
export QT_STYLE_OVERRIDE=adwaita-dark
if [[ $(ps --no-header --pid=$PPID --format=comm) != "fish" && -z ${BASH_EXECUTION_STRING} ]]
then
	exec fish
fi
