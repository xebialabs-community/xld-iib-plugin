<#--

    THIS CODE AND INFORMATION ARE PROVIDED "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE IMPLIED WARRANTIES OF MERCHANTABILITY AND/OR FITNESS
    FOR A PARTICULAR PURPOSE. THIS CODE AND INFORMATION ARE NOT SUPPORTED BY XEBIALABS.

-->

if [ -f ${deployed.container.iib_home}/server/bin/mqsiprofile ]
then
   . ${deployed.container.iib_home}/server/bin/mqsiprofile
fi

<#if myProperties?has_content>
########################################################
#  Override BAR properties
#
<#list myProperties?keys as prop>
echo "${prop}=${myProperties[prop]}" >> override.properties
</#list>

${deployed.container.iib_home}/server/bin/mqsiapplybaroverride -b ${deployed.file.path} -k ${deployed.name} -p override.properties

rm override.properties
</#if>

########################################################
#  Deploy BAR file
#
${deployed.container.iib_home}/server/bin/mqsideploy ${deployed.container.integration_node} -e ${deployed.container.integration_server} -a ${deployed.file.path} -w ${deployed.container.sleep}

########################################################
#  Display BAR deploy status
#
${deployed.container.iib_home}/server/bin/mqsireadbar -b ${deployed.file.path} -r

