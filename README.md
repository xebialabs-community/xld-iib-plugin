# Build status #

[![Build Status][xld-iib-plugin-travis-image]][xld-iib-plugin-travis-url]
[![Codacy Badge][xld-iib-plugin-codacy-image]][xld-iib-plugin-codacy-url]
[![Codeclimate Badge][xld-iib-plugin-codeclimate-image]][xld-iib-plugin-codeclimate-url]
[![License: MIT][xld-iib-plugin-license-image]][xld-iib-plugin-license-url]
![Github All Releases][xld-iib-plugin-downloads-image]

[xld-iib-plugin-travis-image]: https://travis-ci.org/xebialabs-community/xld-iib-plugin.svg?branch=master
[xld-iib-plugin-travis-url]: https://travis-ci.org/xebialabs-community/xld-iib-plugin
[xld-iib-plugin-license-image]: https://img.shields.io/badge/License-MIT-yellow.svg
[xld-iib-plugin-license-url]: https://opensource.org/licenses/MIT
[xld-iib-plugin-downloads-image]: https://img.shields.io/github/downloads/xebialabs-community/xld-iib-plugin/total.svg
[xld-iib-plugin-codacy-image]: https://api.codacy.com/project/badge/Grade/99114736d2b9428f813bcd24f52e2a61
[xld-iib-plugin-codacy-url]: https://www.codacy.com/app/zvercodebender/xld-iib-plugin?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=xebialabs-community/xld-iib-plugin&amp;utm_campaign=Badge_Grade
[xld-iib-plugin-codeclimate-image]: https://api.codeclimate.com/v1/badges/a0e427804d6869a540d3/maintainability 
[xld-iib-plugin-codeclimate-url]: https://codeclimate.com/github/xebialabs-community/xld-iib-plugin/maintainability


# IBM Integration Bus (IIB) plugin #


# Overview #
This plugin allows XL Deploy to deploy and configure applications in an IBM Integration Bus.


# Requirements #

1. IBM Integration Bus (IIB) 9.x or better
2. XL Deploy 5.5 or better
	

# Installation #

Place the plugin JAR file into your `SERVER_HOME/plugins` directory. 

# Features #

* IIB Containers

	* **iib.Server**
	IIB Server where `BAR` files can be configured and deployed
	
	`iib.Server` extends `udm.BaseContainer`
	
	|  Properties          |           Description                    |
	|----------------------|------------------------------------------|
	|  host                | Overthere Host containing the IIB Server |
	|  iib_home            | Home directory of IIB server             |
	|  integration_node    | Integration node name                    |
    |  integration_server  | Integration server name                  |
    
    The IIB Server has several control tasks associated with it as follows:
    
    |  Task              |    Description                                           |
    |--------------------|----------------------------------------------------------|
    | Start Message Flow | Start IIB Execution Engine on an `integration_node` for an `integration_server` |
    | Start Broker       | Start IIB Message Broker Server                          |
    | Stop Message Flow  | Stop IIB Execution Engine on an `integration_node` for an `integration_server` |
    | Stop Broker        | Stop IIB Message Broker Server                           |
    
    
    
    * **iib.BarFile**
    IIB `BAR` file to deploy on the `iib.Server`
    
    `iib.BarFile` extends `udm.BaseDeployedArtifact`
    
    |  Properties               |          Description                        |
    |---------------------------|---------------------------------------------|
    |    preProperties          |  Pre Deployment override properties         |
    |    postProperties         |  Post Deployment override properties        |
    |    completeDeployment     |  Add -m flag to deploy complete information |
    |    restartAllApplications |  Add --restart-all-applications flag        | 
    

##References##

1. [mqsapplybaroverride](https://www.ibm.com/support/knowledgecenter/SSMKHH_9.0.0/com.ibm.etools.mft.doc/an19545_.htm)
2. [mqsideploy](https://www.ibm.com/support/knowledgecenter/SSMKHH_9.0.0/com.ibm.etools.mft.doc/an28520_.htm)
3. [mqsireadbar](https://www.ibm.com/support/knowledgecenter/SSMKHH_9.0.0/com.ibm.etools.mft.doc/an26160_.htm)
4. [mqsistart](https://www.ibm.com/support/knowledgecenter/SSMKHH_9.0.0/com.ibm.etools.mft.doc/an28060_.htm)
5. [mqsistop](https://www.ibm.com/support/knowledgecenter/en/SSMKHH_9.0.0/com.ibm.etools.mft.doc/an28080_.htm)
6. [mqsistartmsgflow](https://www.ibm.com/support/knowledgecenter/en/SSMKHH_9.0.0/com.ibm.etools.mft.doc/an26100_.htm)
7. [mqsistopmsgflow](https://www.ibm.com/support/knowledgecenter/en/SSMKHH_9.0.0/com.ibm.etools.mft.doc/an26110_.htm)
8. [automated build and deploy in websphere message broker using ant](http://blogs.perficient.com/ibm/2013/08/27/automated-build-and-deploy-in-websphere-message-broker-using-ant/)
9. [policies-overview](https://www.ibm.com/docs/en/app-connect/12.0?topic=policies-overview) (Restart all applications)

