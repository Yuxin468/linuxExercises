function five_dirs {
	mkdir five
	for i in 1 2 3 4 5;
	do
	mkdir five/dir$i	
	  for dir in five/dir$i
	  do
	  for j in 1 2 3 4;
	  do
	    touch $dir/file$j
	    for t in $(seq $j);
	    do
	    echo "$j" >> $dir/file$j
	    done
	  done
	  done
	 done
}