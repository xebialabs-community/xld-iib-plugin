<#--

    THIS CODE AND INFORMATION ARE PROVIDED "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE IMPLIED WARRANTIES OF MERCHANTABILITY AND/OR FITNESS
    FOR A PARTICULAR PURPOSE. THIS CODE AND INFORMATION ARE NOT SUPPORTED BY XEBIALABS.

-->

if [ -f ${deployed.container.iib_home}/server/bin/mqsiprofile ]
then
   . ${deployed.container.iib_home}/server/bin/mqsiprofile
fi

${deployed.container.iib_home}/server/bin/mqsideploy ${deployed.container.integration_node} -e ${deployed.container.integration_server} -a ${deployed.file} -w ${deployed.container.sleep}

