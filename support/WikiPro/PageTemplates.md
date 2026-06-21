---
layout: supportpage
nav_group: Paid features
title: Wiki page Templates
toc: true
---
## Introduction

Page Templates in WikiPRO help standardize content creation across your Azure DevOps Wikis. By defining reusable templates, teams can ensure consistency in documentation structure, formatting, and required content sections.

Templates can be used for common document types such as:

- Technical specifications
- Release notes
- Runbooks
- Meeting notes
- Architecture documents
- Knowledge base articles
- Team presentations


## Creating a new page using a Template

1. In the wiki, click **New Page**.
2. Choose the desired template.
3. Enter the page title.
4. Review and customize the generated content.
5. Save the page.

The page will be created with the predefined structure from the selected template.

## Managing Templates

WikiPRO allows administrators to manage templates centrally.

Available actions include:

- Create templates
- Edit templates
- Delete templates
- Organize templates by category
- Set default templates for specific page types



## Creating a Page Template

1. Open your Azure DevOps project.
2. Navigate to **Wiki**.
3. Open the **WikiPRO** menu.
4. Select **Page Templates**.
5. Click **New Template**.
6. Enter a template name.
7. Add the template content using Markdown.
8. Click **Save**.


## Editing an Existing Template

To modify a template:

1. Navigate to **WikiPRO > Page Templates**.
2. Select the template you want to edit.
3. Update the template content.
4. Click **Save Changes**.

Changes apply only to future pages created from the template. Existing pages are not automatically updated.


## Best Practices

### Keep Templates Focused

Create templates for specific document types rather than one large generic template.

### Use Clear Section Headings

Include meaningful headings that guide authors through the required content.

### Add Instructions

Provide placeholder text to help users understand what information should be entered.

Example:

```markdown
## Acceptance Criteria

> Describe the conditions that must be met for this work to be considered complete.
```

### Standardize Metadata

Include common metadata fields at the top of templates.

```markdown
---
---
```
