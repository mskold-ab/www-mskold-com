---
layout: supportpage
nav_group: 3_Paid features
title: "Exporting wikit pages or page trees to Word document"
description: "Export Azure DevOps wiki pages to Word with Wiki PRO — export single pages or entire page trees as formatted Word documents, ready to share with anyone outside Azure DevOps."
menu: "Exporting to Word"
toc: true
---
# Overview

Wiki PRO allows you to export individual wiki pages and page trees to Microsoft Word documents. This is useful for archiving, sharing, and creating documents that follow your organization's standards.

By using custom Word templates, you can easily generate documents that match your organization's branding and formatting.

# Export a Wiki Page to a Word Document

To export a single wiki page:

1. Select the wiki page.
2. Open the **Export** menu.
3. Select **Export page**.
4. Select one of the available Word document templates.

<img width="452" height="90" alt="Export menu" src="https://github.com/user-attachments/assets/c2d5353c-b664-49dd-a821-e429efdd536e" />

# Export a Wiki Page Tree to a Word Document

To export a wiki page together with all of its subpages:

1. Select the wiki page.
2. Open the **Export** menu.
3. Select **Export page tree**.
4. Select one of the available Word document templates.

<img width="452" height="90" alt="Export menu" src="https://github.com/user-attachments/assets/c2d5353c-b664-49dd-a821-e429efdd536e" />

When exporting a page tree, each wiki page is exported as a separate section. A page break is inserted before the next page.

# Creating Your Own Custom Word Template

You can use an existing Word document that already contains your organization's logo, styles, and formatting as the basis for a Wiki PRO template.

To create a custom template:

1. Open a Word document that follows your organization's standards and styling.

2. At the location where the exported content should begin, insert the text `%%HTML_CONTENT%%`.

   ![](./img/WordTemplateExample.png)

3. Save the document.

4. Open the **Wiki PRO Project Settings**.

5. Select the **Document Templates** tab.

6. Click **Add New Library Item** in the left-hand menu.

7. Enter a name, ID, and scope for the template.

8. Click **Change Item**.

9. Upload the document.

10. Click **Save**.

Your custom template is now available for use when exporting Word documents.

# Tips for Creating Word Templates

## Document Properties

Word document properties can be used to display information that is populated automatically during export.

For example, you can insert the **Title** property on the first page or in headers and footers.

When exporting a Word document, the **Title** property is populated from the document title. If no title is available, the query name is used instead.

By default, the following properties are populated:

* Title
* Creator
* Created
* Modified
* Last Modified By

These properties can be used to create dynamic headers and footers.

## Automatically Updating the Table of Contents and Fields

To automatically refresh the table of contents and document fields when the document is opened, add an `AutoOpen` macro to the template.

### Create an AutoOpen Macro

Create a new macro named `AutoOpen` in the template document itself (not in `Normal.dotm`):

```vb
Sub AutoOpen()
    ActiveDocument.Fields.Update
End Sub
```

Save the document as a macro-enabled Word document (`.docm`).

Upload the `.docm` file as a template in Wiki PRO.

> **Note:** Ensure that documents downloaded from Azure DevOps are marked as trusted. Otherwise, Word may prevent macros from running.
