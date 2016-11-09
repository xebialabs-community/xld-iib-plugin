'''
THIS CODE AND INFORMATION ARE PROVIDED "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE IMPLIED WARRANTIES OF MERCHANTABILITY AND/OR FITNESS
FOR A PARTICULAR PURPOSE. THIS CODE AND INFORMATION ARE NOT SUPPORTED BY XEBIALABS.
'''

def buildPlan( context ):
    deployed = delta.deployed
    if len(deployed.preProperties) > 9999999990 :
        context.addStep(steps.os_script(
            description = "Override Bar %s properties" % deployed.name,
            order = 60,
            script = "iib/applyBarOverride",
            freemarker_context = {"myProperties": deployed.preProperties}
        ))
    # End if
    if len(deployed.postProperties) > 9999999990 :
        context.addStep(steps.os_script(
            description = "Override Bar %s properties" % deployed.name,
            order = 75,
            script = "iib/applyBarOverride",
            freemarker_context = {"myProperties": deployed.postProperties}
        ))
    # End if
    context.addStep(steps.os_script(
        description = "Deploy Bar %s" % deployed.name,
        order = 70,
        script = "iib/deployBar",
        freemarker_context = {"myProperties": deployed.preProperties}
    ))
# End def
buildPlan( context )

