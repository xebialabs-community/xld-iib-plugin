<#--

    THIS CODE AND INFORMATION ARE PROVIDED "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE IMPLIED WARRANTIES OF MERCHANTABILITY AND/OR FITNESS
    FOR A PARTICULAR PURPOSE. THIS CODE AND INFORMATION ARE NOT SUPPORTED BY XEBIALABS.

-->

if [ -f ${deployed.container.iib_home}/server/bin/mqsiprofile ]
then
   . ${deployed.container.iib_home}/server/bin/mqsiprofile
fi

<#list myProperties?keys as prop>
echo "${prop}=${myProperties[prop]}" >> override.properties
</#list>

${deployed.container.iib_home}/server/bin/mqsiapplybaroverride -b ${deployed.file.path} -k ${deployed.name} -p override.properties

rm override.properties

