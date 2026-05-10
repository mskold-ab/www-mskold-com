---
layout: supportpage
title:  "Getting started"
nav_group: 1_General
nav_order: 1
toc: true
---

## Introduction
Enhanced Export PRO is designed to be easy to use and yet powerful and flexible to
create custom solutions to be able to meet all your requirements. To solve this, we
have put focus on making the everyday operations needed by most users easy to use
and easily accessible as an **Export Tab** on work item queries and test plans.

Having the output look and feel like your organization’s documentation is also
something we have focused on making easy to do. You can simply **take your own Word
document** and make Enhanced Export PRO use it as a Word template for its Word
export. Images and other resources are of course embedded in the exported
document so you can share it with others.

To enable the power and flexibility, customized solutions can be created and
packaged as a one-time effort and then used by everyone. All advanced features
needed for creating customized solutions are in the Admin Hub.


## Export tab for day to day operations
For your day to day operations you have the export tab right in your workflow, just
click on the export tab and it will render a report with your current Work Item Query
or Test Plan. You can easily switch between prebuilt templates and your own custom templates to produce different reports.

<img src="./img/ExportTabScreenShoot.png" alt="Export tab screenshot" width="100%"/>


## Functionality in the export tab
<table>
    <tr>
        <td>Template selector <br/><img src="./img/TemplateSelector.png" /> </td>
        <td> The template selector lets you choose which template to use when rendering the report. The template defines the structure and layout of how the data is presented. By choosing different templates, your data can be presented like a grid, a specification, or a traceability matrix. You can easily copy or create your own custom templates in the Admin Hub.</td>
    </tr>
    <tr>
        <td>Options <br/><img src="./img/Options.png" /> </td>
        <td>Options let you control what extra data you want to collect. Collecting more data gives you more detailed reports but takes more time. The available options differ between work item queries and test plans.</td>
    </tr>
    <tr>
        <td>Decorators <br/><img src="./img/Decorators.png" /> </td>
        <td>Decorators let you apply different styling rules to the report. Clicking this will show the available decorators and let you choose which ones to apply, and set properties when the decorator supports it.</td>
    </tr>
    <tr>
        <td>Refresh <br/><img src="./img/Refresh.png" /> </td>
        <td>Refreshes the data and rendering</td>
    </tr>
    <tr>
        <td>Open <br/><img src="./img/Open.png" /> </td>
        <td>Exports the report area to the destination you choose in the dropdown. Enhanced Export PRO supports exporting to multiple Word templates, as well as simpler formats like HTML and MIME HTML.</td>
    </tr>
    <tr>
        <td>Print<br/><img src="./img/Print.png" /> </td>
        <td>Prints the report using the browser's standard print functionality</td>
    </tr>
    <tr>
        <td>Copy <br/><img src="./img/Copy.png" /> </td>
        <td>Copies the entire report to the clipboard, so you easily can paste it into other applications.</td>
    </tr>
    <tr>
        <td>Support <br/><img src="./img/Support.png" /> </td>
        <td>Displays a submenu with different support options, as well as the currently loaded extension version</td>
    </tr>

 <tr>
        <td>Purchase <br/><img src="./img/Purchase.png" /> </td>
        <td>Lets you purchase and manage your licenses.</td>
    </tr>
     <tr>
        <td>Settings <br/><img src="./img/Settings.png" /> </td>
        <td>Opens the Admin hub used for editing templates, decorators and document templates</td>
    </tr>
</table>


## Exporting to word document with your organizations style
You can simply take your ordinary Word document with your organization's logo and
styling and convert it to a word template used by Enhanced Export PRO to create its
Word document.
Just follow this procedure to create your own template.
1. Open an ordinary word document that is according to your organization’s
standards and styling
2. At the location you want the export data to start, enter the text
%%HTML_CONTENT%%
3. Save the document (as an ordinary word document)
4. Go to the admin hub for Enhanced Export PRO
5. Select the Library tab
6. Click Add new Library item
7. Give your template a name, id and select a scope
8. Click the Change item button
9. Upload the document
10. Click Save
 


## Edit templates 
The Admin Hub is the place for editing templates. While creating customizations
can be a bit technical, it’s fairly easy to copy an existing template and make minor
changes like adding or removing fields without technical knowledge.

## Simple Modifications

To make minor changes to an existing template – follow those steps:
1. Go to the admin hub
2. Select the template you want to make changes to in the left-hand
menu.
3. Change the name and id and set a scope for your template.
4. Set the scope of the template (Project or Collection)
5. Click on the template tab
6. Find the location/field you want to change/remove
7. Remove or copy an existing field and change the field name.
8. For field names and data – look at the Data tab
9. Save

## Advanced modifications
If you want to create advanced custom solutions, the technologies used for templates are
mainly XML, XSLT, and HTML. If you prefer, Enhanced Export PRO also
supports Handlebars and Markdown.


