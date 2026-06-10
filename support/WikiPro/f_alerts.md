---
layout: supportpage
nav_group: Free features
nav_order: 99
title: Alerts and Admonitions
toc: true
---------

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
| Note      | General information or guidance                    |
| Tip       | Helpful suggestions and best practices             |
| Info       | Helpful suggestions and best practices             |
| Important | Critical information users should be aware of      |
| Warning   | Information about potential problems or risks      |
| Caution   | Information requiring extra care before proceeding |

---

## GitHub Alerts

WikiPRO fully supports the GitHub Alerts syntax introduced in GitHub Flavored Markdown.

### Syntax

```markdown
> [!NOTE]
> This is a note alert.
```

### Example

```markdown
> [!TIP]
> Use variables to avoid repeating configuration values.
```

### Result

> **Tip**
>
> Use variables to avoid repeating configuration values.

### Supported GitHub Alert Keywords

| Keyword   |
| --------- |
| NOTE      |
| TIP       |
| IMPORTANT |
| WARNING   |
| CAUTION   |

### Multi-Line Content

GitHub alerts can contain multiple paragraphs and lists.

```markdown
> [!WARNING]
> Before upgrading:
>
> - Create a backup
> - Verify compatibility
> - Test in a staging environment
```

---

## Docusaurus Admonitions

WikiPRO also supports the Docusaurus admonition syntax commonly used in modern documentation sites.

### Basic Syntax

```markdown
:::note
This is a note.
```
