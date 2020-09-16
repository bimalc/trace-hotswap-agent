#!/bin/bash

#
#Script to call the agent loader along with trace agent jar on the PID
#java -cp agent-loader/target/java-trace-1.0.0-SNAPSHOT.jar:tools.jar net.test.AgentLoader target/trace-agent-1.0-SNAPSHOT.jar $1
#

if [ "$#" -ne 2 ]; then
    echo "Usage: ./run.sh <tools.jar> <trace-agent.jar along with arguments> <pid>"
    echo "For Example:- ./run.sh <JAVA HOME>/lib/tools.jar target/trace-agent-1.0-SNAPSHOT.jar 1234"
fi
java -cp $1:$2 net.test.AgentLoader $2 $3

