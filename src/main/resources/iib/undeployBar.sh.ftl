<#--

    THIS CODE AND INFORMATION ARE PROVIDED "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE IMPLIED WARRANTIES OF MERCHANTABILITY AND/OR FITNESS
    FOR A PARTICULAR PURPOSE. THIS CODE AND INFORMATION ARE NOT SUPPORTED BY XEBIALABS.

-->

if [ -f ${previousDeployed.container.iib_home}/server/bin/mqsiprofile ]
then
   . ${previousDeployed.container.iib_home}/server/bin/mqsiprofile
fi

${previousDeployed.container.iib_home}/server/bin/mqsideploy ${previousDeployed.container.integration_node} -e ${previousDeployed.container.integration_server} -d ${previousDeployed.name} -w ${previousDeployed.container.sleep}
