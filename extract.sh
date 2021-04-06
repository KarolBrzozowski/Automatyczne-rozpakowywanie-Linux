for x in $1/*
do
	if [ -f $x ] ; then
      	 case $x in
   	 	*.tar.bz2)  tar xvjf $x && cd $(basename "$x" .tar.bz2) ;;
  		 *.tar.gz)   tar xvzf $x && cd $(basename "$x" .tar.gz) ;;
   		 *.tar.xz)   tar Jxvf $x && cd $(basename "$x" .tar.xz) ;;
   		 *.bz2)      bunzip2 $x && cd $(basename "$x" /bz2) ;;
   	 	 *.rar)      unrar x $x && cd $(basename "$x" .rar) ;;
   	 	 *.gz)       gunzip $x && cd $(basename "$x" .gz) ;;
   		 *.tar)      tar xvf $x && cd $(basename "$x" .tar) ;;
   		 *.tbz2)     tar xvjf $x && cd $(basename "$x" .tbz2) ;;
   		 *.tgz)      tar xvzf $x && cd $(basename "$x" .tgz) ;;
   		 *.zip)      unzip $x -d $1/ && cd $(basename "$x" .zip) ;;
   	 	 *.Z)        uncompress $x && cd $(basename "$x" .Z) ;;
   		 *.7z)       7z x $x && cd $(basename "$x" .7z) ;;
   		 *)      echo "don't know how to extract '$x'..." ;;
    	 esac
  	else
     	   echo "'$x' is not a valid file!"
  	fi

done