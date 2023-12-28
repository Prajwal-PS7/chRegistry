#!/bin/bash
# Script to Re-Genereate registry entry for Universal Discovery Agent (UDAgent)
# MicroFocus (OpenText)
# Supported OS : Linux & AIX

osName=$(uname -s)
agent_path="NULL"

aixRe-generator(){

        # Define agent file path
        agent_path="/usr/lpp/microfocus/Discovery"

        # Step 1: Stop the UDAgent
        echo "Stopping UDAgent..."
        $agent_path/discagent stop

        # Step 2: Remove the UD_UNIQUE_ID_HostName and UD_UNIQUE_ID values
        echo "Re-Generating UD_UNIQUE_ID_HostName and UD_UNIQUE_ID..."
        perl -pi -e 's/UD_UNIQUE_ID=[^[:space:]]*/UD_UNIQUE_ID=/' /.discagnt/aioptionrc
	      perl -pi -e 's/UD_UNIQUE_ID_HostName==[^[:space:]]*/UD_UNIQUE_ID_HostName=/' /.discagnt/aioptionrc

        # Step 3: Start the UDAgent
        echo "Starting UDAgent..."
        $agent_path/discagent restart
        echo "!! Registry Changes Completed for - AIX !!"

}

linuxRe-generator(){

        # Define agent file path
        agent_path="/opt/microfocus/Discovery"

        # Step 1: Stop the UDAgent
        echo "Stopping UDAgent..."
        $agent_path/discagent stop

        # Step 2: Remove the UD_UNIQUE_ID_HostName and UD_UNIQUE_ID values
        echo "Re-Generating UD_UNIQUE_ID_HostName and UD_UNIQUE_ID..."
        sed -i "/UD_UNIQUE_ID=/c\UD_UNIQUE_ID=" "/root/.discagnt/aioptionrc"
        sed -i "/UD_UNIQUE_ID_HostName=/c\UD_UNIQUE_ID_HostName=" "/root/.discagnt/aioptionrc"

        # Step 3: Start the UDAgent
        echo "Starting UDAgent..."
        $agent_path/discagent restart
        echo "!! Registry Changes Completed fro - Linux !!"

}

mainFunction(){

        if [ "$osName" == "AIX" ]; then
                aixRe-generator
        elif [ "$osName" == "Linux" ]; then
                linuxRe-generator
        else
                echo"!!-!! OS not Supported !!-!!"
        fi

}
mainFunction
