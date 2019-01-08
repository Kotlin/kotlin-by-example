# With this script you can stop jekyll instance and kill its docker container.
# I propose 2 solutions:
# 1. just send a -9 kill signal to the "root" PID, and related/child processes will go down silently  
# 2. search for docker container ID and kill it. 
# Latter is default/uncommented.  

feel free to use/comment pref
TO_STOP="jekyll"

# SOLUTION 1: search for jekyll process and kill. 
# ps aux | grep ${TO_STOP} | awk '{print $2}' | xargs kill -9 2>/dev/null
# END SOLUTION  1

# METHOD 2: search for the container ID and kill it. 
CONTAINER=$( docker container ls  | grep $TO_STOP | cut -d" " -f1 )
CLENGTH=${#CONTAINER}
STATUS="successfully"

if [[ $CLENGTH -gt 0 ]];then
# you can stop instead of kill. Please refer to: https://docs.docker.com/engine/reference/commandline/docker/
	docker container kill $CONTAINER 1>/dev/null
else
	STATUS="already"
fi
# END SOLUTION  2

# RESULT: get a log string 
# NOTE: exit status 123 is related to method one, when grep search for ruby and other bin stuff 
if [[ $? -eq 123 || $? -eq 0 ]];then 
        echo "${TO_STOP} ${STATUS} stopped...";
else
	echo "Error: something went wrong!"	
fi

