declare -a val="$(sudo git diff-tree --no-commit-id --name-only -r $(sudo git log -1 --pretty=%H))"

IFS='/' read -ra ADDR <<<  $val
for i in "${ADDR[@]}"; do
    echo  "$i"
    if [ $i = "folder5" ]; then
        echo "running kong"
        exit
    fi
done
