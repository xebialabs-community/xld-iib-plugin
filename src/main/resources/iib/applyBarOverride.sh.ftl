<#--

    THIS CODE AND INFORMATION ARE PROVIDED "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE IMPLIED WARRANTIES OF MERCHANTABILITY AND/OR FITNESS
    FOR A PARTICULAR PURPOSE. THIS CODE AND INFORMATION ARE NOT SUPPORTED BY XEBIALABS.

-->

<#list deployed.properties?keys as prop>
echo "${prop}=${deployed.properties[prop]}" >> override.properties
</#list>

${deployed.container.iib_home}/server/bin/mqsiapplybaroverride -b ${deployed.file} -k ${deployed.appName} -p override.properties

rm override.properties

