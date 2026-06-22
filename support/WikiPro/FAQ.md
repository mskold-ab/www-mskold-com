---
layout: supportpage
nav_group: 4_Frekvently Asked Questions
nav_order: 1000
title:  "FAQ Wiki PRO for Azure DevOps, Rich Text Editor, Mermaid & DrawIO Charts and Enterprise Wiki Features"
menu: "FAQ"
toc: true
---

# Wiki PRO for Azure DevOps FAQ

## General

### What is WikiPRO?
WikiPRO is an extension for Azure DevOps and Azure DevOps Server that enhances the native wiki with richer authoring and rendering features while using the same underlying wiki data and APIs. For more information, see [About WikiPRO](./About-WikiPRO.md#introduction).

### Does WikiPRO require data migration from the native Azure DevOps wiki?
No. WikiPRO works side by side with the native Azure DevOps wiki and uses the same data source and API, so no data migration is needed. See [About WikiPRO](./About-WikiPRO.md#introduction).

### Does WikiPRO work with Azure DevOps Server?
Yes. WikiPRO works with both Azure DevOps and Azure DevOps Server. See [About WikiPRO](./About-WikiPRO.md#introduction).

### Is WikiPRO free or paid?
WikiPRO uses a freemium model. Core functionality is available for free, while enterprise-oriented capabilities and guaranteed support are part of paid plans. See [Freemium Model](./About-WikiPRO.md#freemium-model).

### What features are included in the free version of WikiPRO?
The free offering includes wiki rendering, a markdown editor, Mermaid charts, alerts/admonitions, markdown improvements, better code blocks, side panels such as TOC and revision history, My Pages, organization overview, printing, and more. See [Free Features](./About-WikiPRO.md#free-features).

### What features are included in the paid version of WikiPRO?
🔒 Paid features include rich text editing, Draw.io charts and plugins, Word export, wiki page metadata, tags and filters, page templates, wiki templates, and wiki-level statistics. See [Paid Features](./About-WikiPRO.md#paid-features).

### Does WikiPRO support printing?
Yes. WikiPRO supports printing wiki content, including subtree printing, in the free version. See [Printing](./Print.md#printing).

### Does WikiPRO support exporting?
🔒 Yes. WikiPRO supports exporting wiki content to Word documents. Exporting pages and page trees to Word documents is a paid feature. See [Exporting to Word](./Export.md#exporting-to-word).

### Does WikiPRO support custom Word templates for export?
🔒 Yes. WikiPRO supports custom Word templates for Word export. See [Custom Word templates](./Export.md#custom-word-templates).

## Mermaid diagrams

### Does WikiPRO support Mermaid diagrams?
Yes. WikiPRO supports Mermaid diagrams in Azure DevOps Wiki pages, including a modern fenced-code-block syntax. See [Introduction](./f-mermaid.md#introduction).

### Which Mermaid diagram types are supported?
WikiPRO supports flowcharts, sequence diagrams, class diagrams, state diagrams, ER diagrams, user journeys, gantt charts, pie charts, quadrant charts, requirement diagrams, git graphs, C4 diagrams, and more. See [Supported Diagram Types](./f-mermaid.md#supported-diagram-types).

### How do I create a Mermaid diagram in the rich text editor?
🔒 Use the Mermaid toolbar icon and then edit the inserted chart. See [Creating a Mermaid diagram in the rich text editor](./f-mermaid.md#creating-a-mermaid-diagram-in-the-rich-text-editor).

### How do I create a Mermaid diagram in the markdown editor?
Add a fenced code block and specify `mermaid` as the language. See [Creating a Mermaid Diagram in the markdown editor](./f-mermaid.md#creating-a-mermaid-diagram-in-the-markdown-editor).

### What can I use Mermaid diagrams for?
Mermaid diagrams are useful for application architecture, deployment workflows, CI/CD pipelines, business processes, system integrations, database relationship diagrams, and project timelines. See [Usage Scenarios](./f-mermaid.md#usage-scenarios).

## Draw.io diagrams

### Does WikiPRO support Draw.io diagrams?
🔒 Yes. WikiPRO supports embedding and editing Draw.io diagrams directly in wiki pages. See [Introduction](./DrawIO.md#introduction).

### How do I add a new Draw.io diagram to a WikiPRO page?
🔒 Open the page, select **Edit**, place the cursor where the diagram should go, choose **Insert** > **Draw.io Diagram**, create the diagram, and save the page. See [Creating a New Diagram](./DrawIO.md#creating-a-new-diagram).

### How do I edit an existing Draw.io diagram?
🔒 Open the page, select **Edit**, click the diagram, choose **Edit**, make your changes, close the editor, and save the page. See [Editing an Existing Diagram](./DrawIO.md#editing-an-existing-diagram).

### Can I migrate existing Draw.io diagrams into WikiPRO?
🔒 Yes. Existing diagrams can be moved manually by export/import, or by editing markdown and pasting exported XML into a `drawio` block. See [Migrating Existing Diagrams](./DrawIO.md#migrating-existing-diagrams).

### Can Draw.io diagrams be version controlled?
🔒 Yes. The documentation states that diagrams are stored as part of the version-controlled wiki page, and changes can be viewed in diff form. See [Introduction](./DrawIO.md#introduction).

## Rich text editor

### Does WikiPRO include a rich text editor?
🔒 Yes. WikiPRO provides a WYSIWYG rich text editor for Azure DevOps Wiki pages. See [Introduction](./RichTextEditing.md#introduction).

### What are the benefits of the rich text editor?
🔒 It lets users create and format documentation using a familiar word-processor-style experience, insert common elements more easily, and reduce the need to know Markdown. See [Benefits of Rich Text Editing](./RichTextEditing.md#benefits-of-rich-text-editing).

### How do I access the rich text editor?
🔒 Open a wiki page, select **Edit**, switch to **Rich Text Editor** mode if needed, and start editing with the toolbar. See [Accessing the Rich Text Editor](./RichTextEditing.md#accessing-the-rich-text-editor).

### Can I create and modify tables in the rich text editor?
🔒 Yes. You can insert tables and use row and column menus to add, align, or delete rows and columns. See [Creating Tables](./RichTextEditing.md#creating-tables) and [Modifying Tables](./RichTextEditing.md#modifying-tables).

### Can I insert images using the rich text editor?
🔒 Yes. The editor supports inserting images through the toolbar. See [Adding Images](./RichTextEditing.md#adding-images).

### Are internal and external links supported in the rich text editor?
🔒 The article includes sections for internal and external links, but it does not currently provide detailed steps for using them. See [Inserting Links](./RichTextEditing.md#inserting-links).

## Alerts and callouts

### Does WikiPRO support alerts or callouts?
Yes. WikiPRO supports rich callout blocks for notes, warnings, tips, and similar content. See [Introduction](./f_alerts.md#introduction).

### Which alert syntaxes are supported?
WikiPRO supports both GitHub Alerts syntax and Docusaurus Admonitions syntax. See [Introduction](./f_alerts.md#introduction) and [Supported syntax](./f_alerts.md#supported-syntax).

### Which alert types are supported?
Supported types include Note, Tip, Info, Important, Warning, and Caution. See [Supported Alert Types](./f_alerts.md#supported-alert-types).

## Tags and metadata

### Can I tag wiki pages in WikiPRO?
🔒 Yes. WikiPRO allows authors to assign tags to wiki pages. See [Introduction](./PageTags.md#introduction).

### Why should I use page tags?
🔒 Tags help organize documentation, improve discoverability, support topic-based navigation, and make reporting and filtering easier. See [Introduction](./PageTags.md#introduction).

### How do I add tags to a wiki page?
🔒 Open the page, select **Edit**, find the **Tags** section in page properties, add tags, and save the page. See [Adding Tags to a Wiki Page](./PageTags.md#adding-tags-to-a-wiki-page).

### Can I edit or remove tags later?
🔒 Yes. Existing tags can be edited or removed from the page and then saved. See [Editing Existing Tags](./PageTags.md#editing-existing-tags) and [Removing Tags](./PageTags.md#removing-tags).

### How can users view tagged pages?
🔒 Users can browse tagged content through the tag browser, by filtering pages by tag, or by searching for a specific tag. See [Viewing Tagged Pages](./PageTags.md#viewing-tagged-pages).

### Are there best practices for creating tags?
🔒 Yes. Recommended practices include using consistent naming, avoiding duplicates with different capitalization, and keeping tags concise and meaningful. See [Best Practices](./PageTags.md#best-practices).

## Templates

### Does WikiPRO support page templates?
🔒 Yes. WikiPRO supports page templates to help standardize documentation. See [Introduction](./PageTemplates.md#introduction).

### What can page templates be used for?
🔒 They can be used for technical specifications, release notes, runbooks, meeting notes, architecture documents, knowledge base articles, and team presentations. See [Introduction](./PageTemplates.md#introduction).

### How do I create a new page from a template?
🔒 In the wiki, click **New Page**, choose a template, enter a page title, customize the generated content, and save. See [Creating a new page using a Template](./PageTemplates.md#creating-a-new-page-using-a-template).

### How do I create or manage page templates?
🔒 Administrators can create, edit, delete, organize, and set defaults for templates. For creation and management steps, see [Managing Templates](./PageTemplates.md#managing-templates) and [Creating a Template](./PageTemplates.md#creating-a-template).

### Do changes to a template update existing pages automatically?
🔒 No. Changes apply only to future pages created from the template. Existing pages are not updated automatically. See [Editing an Existing Template](./PageTemplates.md#editing-an-existing-template).

### Are there best practices for designing templates?
🔒 Yes. Keep templates focused, use clear section headings, add instructions, and standardize metadata. See [Best Practices](./PageTemplates.md#best-practices).

## My Pages

### What is My Pages in WikiPRO?
My Pages is a personal workspace for accessing pages of interest across projects and wikis. See [Introduction](./f_my-pages.md#introduction).

### Which filters are available in My Pages?
My Pages includes Favorites, Last viewed, Last edited, and Followed. See [Introduction](./f_my-pages.md#introduction).

### How do I access My Pages?
Open the **WikiPRO** hub group in Azure DevOps and select **My Pages**. See [Accessing My Pages](./f_my-pages.md#accessing-my-pages).

## Unanswered questions

> [!WARNING]
> The following questions are not answered by the current documentation.

### ❓ Can WikiPRO export content to formats other than Word?
The current documentation mentions exporting wikis to Word documents as a paid feature, but it does not describe any other export formats.

### ❓ Does WikiPRO support bulk tagging or tag management across many pages?
The current documentation explains how to add, edit, remove, and browse tags, but it does not describe bulk tag operations.

### ❓ Can page templates include dynamic variables or placeholders?
The current documentation recommends placeholder text, but it does not explain whether templates support dynamic variables.

### ❓ Can administrators restrict who may create or edit templates?
The current documentation states that administrators can manage templates, but it does not describe permission controls in detail.

### ❓ Does My Pages sync across browsers or users?
The current documentation describes My Pages as a personal workspace, but it does not explain synchronization behavior.

### ❓ Are Mermaid or Draw.io diagrams exportable as standalone files from WikiPRO?
The current documentation explains how to create, edit, and import diagrams, but it does not explain export from WikiPRO.

### ❓ Can alerts be customized with branding or custom styles?
The current documentation lists supported alert types and syntax, but it does not describe custom styling options.

### ❓ Does the rich text editor support collaborative real-time editing?
The current documentation describes authoring capabilities, but it does not mention real-time multi-user editing.
