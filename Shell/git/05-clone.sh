function gitc {
  for i in "$@"
  do

    git clone https://github.com/fusion809/$i.git $i

    pushd $i
      gitsw
    popd

  done
}

function gitco {
  git clone https://github.com/$1/$2 $GHUBO/$2
}
