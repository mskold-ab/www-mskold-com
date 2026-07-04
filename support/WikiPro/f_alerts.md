---
layout: supportpage
nav_group: 2_Free features
nav_order: 99
title: "Alerts and callouts"
description: "Azure DevOps WikiPRO supports rich callout blocks that help authors highlight important information, warnings, tips, notes, and other contextual guidance within their documentation. WikiPRO provides compatibility with both:."
menu: "Alerts and callouts"
toc: true
---
## Introduction
Azure DevOps WikiPRO supports rich callout blocks that help authors highlight important information, warnings, tips, notes, and other contextual guidance within their documentation.
WikiPRO provides compatibility with both:

* **GitHub Alerts** syntax (`> [!NOTE]`, `> [!WARNING]`, etc.)
* **Docusaurus Admonitions** syntax (`:::note`, `:::warning`, etc.)

This allows teams to migrate content from GitHub, Docusaurus, or other documentation platforms without modifying existing alert markup.

## Supported Alert Types

The following alert/admonition types are supported:

| Type      | Purpose                                            |
| --------- | -------------------------------------------------- |
| Note      | General information or guidance that users should know, even when skimming content. |
| Tip       | Helpful advice/suggestions and best practices             |
| Info       | Helpful information users should be aware of|
| Important | Critical information users should be aware of      |
| Warning   | Information about potential problems or risks      |
| Caution   | Advice about risks or negative outcomes of certain actions |


## Supported syntax

### GitHub Alerts

WikiPRO fully supports reading and rendering GitHub Alerts syntax introduced in GitHub Flavored Markdown.
```markdown
> [!NOTE]
> Note is an alert to show a note. 
> All alerts/admonitions can be multiline.
```

### Docusaurus Admonitions

WikiPRO also supports the Docusaurus admonition syntax commonly used in modern documentation sites.

### Basic Syntax

```markdown
:::note
Note is an alert to show a note.
All alerts/admonitions can be multiline.
```
