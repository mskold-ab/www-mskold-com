---
layout: supportpage
title: How does Enhanced Export PRO work 
nav_group: 1_General
nav_order: 20
---

## Overview 
Enhanced Export PRO produces your document in 4 steps:
1. Fetching data 
2. Rendering data to a report 
3. Decorating the report with styles
4. Exporting the report into a file

Each step has many configurable options that let you customize the outcome. Those configurable options are packaged into **Templates**. The same work item query or test plan can be transformed into a table, text document, or matrix by selecting different templates.

## Fetching data
Everything starts by you selecting a query or a test plan as the context for the export.
Enhanced Export PRO has many additional capabilities to fetch and expand data. For example, it can expand links and fetch linked work items, attachments, and revision history. To decide what data to fetch, Enhanced Export PRO uses options that control what data is fetched. The default values for options are stored in the template, but end users can easily change them by clicking the Options button in the toolbar.

## Rendering data to a report 
Once Enhanced Export PRO has fetched all data according to the selected options, it combines the data with a template to render a report. Enhanced Export PRO uses well-known standardized languages such as XML/XSLT or JSON/Handlebars/Markdown for creating an HTML page.

## Decorating the report with styles 
Generating a beautiful HTML document that looks like the rest of Azure DevOps can be time-consuming and difficult. Decorators are a solution to that problem. Decorators are small "programs" that can be applied to an HTML document to add styling. Enhanced Export PRO comes with a few decorators to add icons, links, and other enhancements. You can also create and use your own decorators.

## Exporting the report to a file 
Many times, getting a report on the screen isn't enough. You also need to store and share content outside of Azure DevOps. To do that, Enhanced Export PRO has a number of export drivers that output the document to a file.
Each driver and format has its own use case. 
**HTML**
Simple export of the HTML to a file. All images are linked.

**MIME HTML**
Export the HTML report with all images embedded as part of the document.

**WORD**
The Word driver inserts the report into an ordinary word document and saves it to a file. 
Word HTML support is limited, so modern advanced styling might be lost. On the other hand, you can insert Word elements.


