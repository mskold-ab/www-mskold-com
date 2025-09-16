---
layout: supportpage
title: Export word documents 
toc: true
---


## Introduction
Exporting to word 



## Document properties 
The title of the report is taken from the title html element if present, if not the query name Is used. 
By default we populate the following properties  of the exported word document 
*	Title
*	Creator
*	Creted
*	Modified 
*	Last modified by 


### Setting document properties in the template 
You can create and set document properties in the exported document by rendering a META tag 
```xml
<meta name="word-properties"  data-propName="Prop value" data-prop2Name="prop 2 value"/>
```


### Setting properties at runtime 
We also push all Options as custom properties, enabling the user to fill values at run time and have them exported as document properties in word. 


## Creating an template that auto updates TOC and fields on open
To automate refreshing the TOC and document fields you need to add a macro to the template. 

### Create an AutoOpen macro  
Create a new macro AutoOpen in the template document Specific (not All or the normal.dotm)


    Sub AutoOpen()
        ActiveDocument.Fields.Update
    End Sub

Save the macro as part of the template documet as a Macro included document (.docm)
Upload the template document as a temlate document in Enhanced Export PRO. 

Make sure that the documents you download from Azure DevOps is trusted 


