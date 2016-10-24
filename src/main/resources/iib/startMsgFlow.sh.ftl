<#--

    THIS CODE AND INFORMATION ARE PROVIDED "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE IMPLIED WARRANTIES OF MERCHANTABILITY AND/OR FITNESS
    FOR A PARTICULAR PURPOSE. THIS CODE AND INFORMATION ARE NOT SUPPORTED BY XEBIALABS.

-->

if [ -f ${container.iib_home}/server/bin/mqsiprofile ]
then
   . ${container.iib_home}/server/bin/mqsiprofile
fi

${container.iib_home}/server/bin/mqsistartmsgflow ${container.integration_node} -e ${container.integration_server} -w ${container.startSleep}
