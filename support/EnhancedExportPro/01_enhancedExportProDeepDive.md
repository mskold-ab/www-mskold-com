---
layout: supportpage
title: How does Enhanced Export PRO work 
---

## Overview 
Enhanced Export PRO produces your document in 4 steps 
1. Fetching data 
2. Rendering data to a report 
3. Decorating the report with styles
4. Exporting the report into a file

Each step has a lot of configurable options that lets you customize the outcome. Those configurable options are packaged into ** Templates **. The same work item query or test plan can be transformed to a table, text document and matrix by selecting different templates. 

## Fetching data
Everying starts by you selecting a query or a test plan as the context for the export.
But Enhaneced Export PRO has a lot of additional capabilities to fetch more data and expand the data. For exampel it can expand links and fetch linked work items, attatchments and revision history.  To decide what data to fetch - Enhanced Expor PRO uses options that controls what data is fetched.  The default values for options are stored in the template, but end users can easily change them by clicking the Option button in the toolbar. 

## Rendering data to a report 
Once Enhanced Export PRO has fetched all data according to the passed options it combines the data with a template to render a report. Enhanced Export PRO uses well know standardized langues as XML/XSLT or json/handlebars/markdown for creating a HTML page. 

## Decorating the report with styles 
Generating a beatifull html document that looks like the rest of Azure Devops can be time consuming and dificult. Decorators are a solution to that problem. Decorators are small "programs" that can be applied to a html document to add styling to the document.  Enhanced Export PRO comes with a few decorators to add icons, links and others. But you can also create and use your own decorators. Of course 

## Exporting the report to a file 
Many times - getting a report on the screen isn't enough. We need to store and share the content outside of Azure DevOps. To do that Enhanced Expor PRO has a number of export drivers to output the document into a file. 
Each driver and format has its own use case. 
**HTML**
Simple export of the HTML to a file. All images is linked 

**MIME HTML**
Export the html report with all images embeeded as part of the document. 

**WORD**
The Word driver inserts the report into an ordinary word document and saves it to a file. 
Word HTML support is limited so modern advanced styling might be lost. On the other hand - you can insert word elements. 


