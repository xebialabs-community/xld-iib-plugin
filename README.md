# Build status #

[![Build Status](https://travis-ci.org/xebialabs-community/xld-datapower-plugin.svg?branch=master)](https://travis-ci.org/xebialabs-community/xld-datapower-plugin)

# IBM Information Broker (IIB) plugin #


# Overview #
This plugin allows XL Deploy to deploy and configure applications in an IBM Information Broker.


# Requirements #


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
    
    
    * **iib.BarFile**
    IIB `BAR` file to deploy on the `iib.Server`
    
    `iib.BarFile` extends `udm.BaseDeployedArtifact`
    
    |  Properties          |          Description                    |
    |----------------------|-----------------------------------------|
    |    preProperties     |  Pre Deployment override properties     |
    |    postProperties    |  Post Deployment override properties    |
    

##References##

1. [mqsapplybaroverride](https://www.ibm.com/support/knowledgecenter/SSMKHH_9.0.0/com.ibm.etools.mft.doc/an19545_.htm)
2. [mqsideploy](https://www.ibm.com/support/knowledgecenter/SSMKHH_9.0.0/com.ibm.etools.mft.doc/an28520_.htm)
3. [automated build and deploy in websphere message broker using ant](http://blogs.perficient.com/ibm/2013/08/27/automated-build-and-deploy-in-websphere-message-broker-using-ant/)

