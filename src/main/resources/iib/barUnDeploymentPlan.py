'''
THIS CODE AND INFORMATION ARE PROVIDED "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE IMPLIED WARRANTIES OF MERCHANTABILITY AND/OR FITNESS
FOR A PARTICULAR PURPOSE. THIS CODE AND INFORMATION ARE NOT SUPPORTED BY XEBIALABS.
'''

def buildPlan( context ):
    deployed = delta.previous
    context.addStep(steps.os_script(
        description = "Un-Deploy Bar %s" % deployed.name,
        order = 30,
        script = "iib/undeployBar",
        freemarker_context = {"user": "XebiaLabs"}
    ))
# End def
buildPlan( context )

