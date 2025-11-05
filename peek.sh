
if [[ -n "$2" ]];
then head -n"$2" "$1" && echo ... && tail -n"$2" "$1";
else [[ -z "$2" ]];
head -n3 "$1" && echo ... && tail -n3 "$1";
fi

