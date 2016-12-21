

#<a name="top"></a>SpagoBI 

[![License badge](https://img.shields.io/badge/license-MPL-blue.svg)](http://www.spagobi.org/homepage/opensource/license/)
[![Documentation badge](https://readthedocs.org/projects/spagobi/badge/?version=latest)](http://spagobi.readthedocs.org/en/latest/)
[![Docker badge](https://img.shields.io/docker/pulls/spagobilabs/spagobi.svg)](https://hub.docker.com/r/spagobilabs/spagobi/)
[![Support badge](https://img.shields.io/badge/support-sof-yellowgreen.svg)](http://stackoverflow.com/questions/tagged/spagobi)

* [Introduction](#introduction)
* [GEi overall description](#gei-overall-description)
* [Build](#build)
* [Install](#install)
* [Running](#running)
* [REST API Example](#rest-api-example)
* [API Reference Documentation](#api-reference-documentation)
* [SpagoBI User manuals](#spagobi-user-manuals)
* [Advanced topics](#advanced-topics)
* [License](#license)
		  
## Introduction

This is the source code repository for SpagoBI Server, that is the main component of the [SpagoBI suite](http://www.spagobi.org). 

SpagoBI is also part of the [FIWARE community](http://www.fiware.org), being the reference implementation of the Data Visualization GE. Check the [FIWARE Catalogue entry for SpagoBI](http://catalogue.fiware.org/enablers/data-visualization-spagobi).

Any feedback on this documentation is highly welcome, including bugs, typos
or things you think should be included but aren't. You can use the [SpagoBI tracker](https://www.spagoworld.org/jira/browse/SPAGOBI) to provide feedbacks.

You can find the User & Programmer's Manual and the Administration Guide on [readthedocs.org](http://spagobi.readthedocs.org)

## GEi overall description

SpagoBI is the only entirely Open Source Business Intelligence suite. It covers all the analytical areas of Business Intelligence projects, with innovative themes and engines.

If this is your first contact with SpagoBI, it is highly recommended to have a look at its [Demo](http://demo.spagobi.org/Demo/index.html#).

## Build

With Maven, in spago-parent project, run 'clean install' command.

## Install

Install documentation for SpagoBI can be found at [the corresponding section of the Admin Manual](doc/admin/README.md#installation).

## Running

How to start and stop SpagoBI can be found at [the corresponding section of the Admin Manual](doc/admin/README.md#how-to-start-and-stop-spagobi-server).

[Top](#top)

## REST API Example

In order to retrieve information about a specified DataSet (*RestMetersValues* in this example): 

``` 
curl http://<spagobi-url>/SpagoBI/restful-services/2.0/datasets/RestMetersValues --header '<authentication header>' | python -mjson.tool

{
    "active": true,
    "categoryId": 150,
    "commonInfo": {
        "organization": null,
        "sbiVersionDe": null,
        "sbiVersionIn": "4.0",
        "sbiVersionUp": null,
        "timeDe": null,
        "timeIn": 1441025411000,
        "timeUp": null,
        "userDe": null,
        "userIn": "biadmin",
        "userUp": null
    },
    "configuration": {
        "restAddress": "http://192.168.2.137:1026/v1/queryContext",
        "restDirectlyJSONAttributes": "false",
        "restFetchSize": "limit",
        "restHttpMethod": "Post",
        "restJsonPathAttributes": [
            {
                "jsonPathType": "string",
                "jsonPathValue": "pros3",
                "name": "id"
            },
            {
                "jsonPathType": "double",
                "jsonPathValue": "$.contextResponses[?(@.contextElement.id==pros3_Meter)].contextElement.attributes[?(@.name==upstreamActivePower)].value",
                "name": "upstreamActivePower"
            },
           ...
``` 

[Top](#top)

## API Reference Documentation

* [SpagoBI REST](http://docs.spagobi.apiary.io/#) (Apiary)

[Top](#top)

## SpagoBI User & Programming manuals

* [SpagoBI NGSI](doc/user/NGSI/README.md)
* [SpagoBI CKAN](doc/user/CKAN/README.md)
* [SpagoBI Javascript SDK](doc/user/JS/README.md)

[Top](#top)

## Advanced topics

* [Installation and Administration manual](doc/admin/README.md)
* [Docker Container-based deployment](docker/README.md)

[Top](#top)

## License

You can find details about the license of SpagoBI suite on the [SpagoBI site](http://www.spagobi.org/homepage/opensource/license/).

[Top](#top)
