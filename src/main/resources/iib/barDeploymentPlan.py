'''

Copyright 2022 XEBIALABS

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

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

