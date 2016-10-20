'''
THIS CODE AND INFORMATION ARE PROVIDED "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE IMPLIED WARRANTIES OF MERCHANTABILITY AND/OR FITNESS
FOR A PARTICULAR PURPOSE. THIS CODE AND INFORMATION ARE NOT SUPPORTED BY XEBIALABS.
'''

from java.util import HashSet

def containers():
    result = HashSet()
    for _delta in deltas.deltas:
        deployed = _delta.deployedOrPrevious
        current_container = deployed.container
        if _delta.operation != "NOOP" and current_container.type == "iib.Server":
            result.add(current_container)
    return result


for container in containers():
    context.addStep(steps.os_script(
        description="Stopping Message Flow on %s" % container.name,
        order=10,
        script="iib/stopMsgFlow",
        freemarker_context={'container': container},
        target_host=container.host)
    )
    context.addStep(steps.os_script(
        description="Starting Message Flow on %s" % container.name,
        order=90,
        script="iib/startMsgFlow",
        freemarker_context={'container': container},
        target_host=container.host))
