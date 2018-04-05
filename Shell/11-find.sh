function comsearch {
    for dir in $(echo $PATH | sed 's/:/\n/g')
    do
         if [[ -d $dir ]]; then 
              find $dir -name "*$@*"
         fi
    done
}

