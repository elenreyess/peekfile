
a=$(wc -l < $1);
b=$(( 2 * $2 ));
if [[ $b -ge "$a"  ]];
then cat $1;
else [[ "$a" -gt "$b" ]];
	echo "WARNING! There are more than" $b "lines"	&&
	head -n"$2" "$1" && echo ... && tail -n"$2" "$1";
fi

