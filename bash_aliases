alias q='exit'
alias clips_beta='java -Djava.library.path=/home/aj/Downloads/CLIPSJNI/ -cp /home/aj/Downloads/CLIPSJNI/CLIPSJNI.jar CLIPSJNI.Environment'
function sI {
	scrot '%Y-%m-%d_$wx$h.png' -e 'imgup $f';
}

function pdf {
	evince $1 &disown;
}
