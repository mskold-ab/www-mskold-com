---
layout: supportpage
title: Guide - Adding a custom field to a template
toc: true
---

## Introduction
This guide is focused on taking an existing template and add a field to it. 


## Add your custom field to the query 
As the first step you need to add the field you want to include into a query.

Goto the query edit tab, click on the column options button, add your custom field to your query and save it. 
Click on the Export tab to run the query in the export tab.


## Create your own custom template 
From the Export tab, click the settings gear to navigate to the Admin Hub. 
In the Admin hub find and select the template you want to Start with. 

Once selected - Change the **name**, **id**  and set the **Scope** and click the **Save** button 


## Find the right location 
A very quick way of finding the right location for a change is to take a text you know is present, like a label or a specific field name and search for it. 

>Place the cursor in the text editor on the template tab and press Ctrl + F and search for the text Priority 
<img src="./img/edit_template_find_place.png" /> 


## Add the field  
Once the location for the change has been found you can start adding your changes.  In some cases, like adding a column to a grid, you might need to make changes in multiple places (adding a header and the field value) 

You can manually add the field by typing the XSLT code for featching it. Use <xsl:value-of select="refName" /> for simple text fields and <xsl:copy-of select="refName" /> for formated fields.

You can find the name of your field in the data tab. 

>Type the lead text and <xsl:value-of select="Custom.CustomPriority" />
<img src="./img/edit_template_add_field.png" /> 


## Test it 
A quick test can be done by switch over to the preview tab.  
You can also save the template and switch back to the export tab and re-run the export. Just remeber to reload the export tab to get the latest version of the template. 


