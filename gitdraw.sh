declare -a DATES=(
    "May 1 10:57:30 2016 +0300"
    "Jun 1 10:57:30 2016 +0300"
    "Jul 1 10:57:30 2016 +0300"
    "Aug 1 10:57:30 2016 +0300"
)
TMP_FILE_NAME="tmp.txt"

touch $TMP_FILE_NAME
for i in "${DATES[@]}"
do
    echo "@" >> $TMP_FILE_NAME

    git add .
    git commit -m "Draw" 
    GIT_COMMITTER_DATE="$i" git commit --amend --no-edit --date="$i"
    git push
done
rm $TMP_FILE_NAME
