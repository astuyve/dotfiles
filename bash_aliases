alias q='exit'
function sI {
	scrot '%Y-%m-%d_$wx$h.png' -e 'imgup $f';
}

function pdf {
	evince $1 &disown;
}
