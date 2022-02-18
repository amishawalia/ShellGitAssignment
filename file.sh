# #!/bin/bash

# for f in $@
# do
#  	OUTFILE=$1
# 	SEARCH=$2
# 	if [[-f $f]]; then
# 		RESULT=`grep "$SEARCH" $f`
# 	fi	
# 	if [-n "$RESULT" ]; then
# 		 echo -e "\n"
# 	 	echo "Error in "$f" :"
# 	 	echo $RESULT
# 	 	echo -e "\n" >> $OUTFILE
# 	fi
# done
#!/bin/bash
expected=outfile
for f in $@
do
      OUTFILE=$1
      SEARCH=$2
  if [[ -f $f ]]; then
      RESULT=`grep "$SEARCH" $f`
  fi    
      if [ -n "$RESULT" ]; then
           
           echo -e "\n Error(s) in "$f":"
           echo $RESULT
           echo -e "\n" >> $OUTFILE
      fi
  
done
