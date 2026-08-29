---
layout: productPage
title: "Wiki PRO Features"
description: "All Wiki PRO features for Azure DevOps: rich text editing, Draw.io diagrams, Mermaid charts, page tags, templates, My Pages, export to Word, and more."
permalink: /wiki-pro/features/
---
<style>
  .wf-nav { margin-bottom: 24px; font-size: 0.95em; }
  .wf-nav a { margin-right: 16px; }
  .wf-outcome { border-top: 2px solid #e0e0e0; padding-top: 24px; margin-top: 40px; }
  .wf-feature { margin-top: 28px; }
  .wf-tier-badge {
    display: inline-block;
    font-size: 0.78em;
    font-weight: bold;
    padding: 2px 10px;
    border-radius: 10px;
    vertical-align: middle;
    margin-left: 8px;
  }
  .wf-tier-free  { background: #e6f4ea; color: #1a7f37; }
  .wf-tier-paid  { background: #fff0c8; color: #7a5200; }
  .wf-cta { margin-top: 8px; font-size: 0.95em; }
  .wf-see-also { margin-top: 8px; font-size: 0.9em; color: #555; }
</style>

<div class="wf-nav">
  <a href="/wiki-pro/">← Wiki PRO home</a>
  <a href="/wiki-pro/pricing/">Pricing &amp; licensing</a>
  <a href="/wiki-pro/release-notes/">Release notes</a>
  <a href="/support/WikiPro/">Support &amp; docs</a>
</div>

This page covers all features included in Wiki PRO for Azure DevOps, organized around the same six outcomes as the product overview.
Features marked **Free** are available at no cost. Features marked **Paid** require a subscription (free 30-day trial available).

---

<div class="wf-outcome" markdown="1">

## 📝 Make everyone a contributor

<div class="wf-feature"markdown="1">

### Rich Text Editing <span class="wf-tier-badge wf-tier-paid">Paid</span>

Wiki PRO provides a Word-style WYSIWYG editor for Azure DevOps wiki pages.
Authors can format text, insert tables, images, and code blocks using a familiar toolbar — without writing a single line of Markdown.
Changes are automatically converted to Markdown-compatible format on save, keeping full compatibility with the rest of the Azure DevOps wiki.

<div class="wf-cta"><a href="/support/WikiPro/RichTextEditing">Learn more about Rich Text Editing →</a></div>
</div>

<div class="wf-feature" markdown="1">>

### Markdown Editing as a First-Class Experience <span class="wf-tier-badge wf-tier-free">Free</span>

An enhanced Markdown editing experience that preserves the workflow developers already know, giving modern Markdown compatibility while preserving the developer workflow.

</div>

<div class="wf-feature">

### Draw.io Diagrams Editor <span class="wf-tier-badge wf-tier-paid">Paid</span>

A fully integrated Draw.io editor that lets users create and edit visual diagrams, letting non-technical contributors create and edit charts and diagrams themselves.

<div class="wf-see-also">See Draw.io Integration below ↓ for how diagrams are stored and version-controlled.</div>
</div>

</div>

<div class="wf-outcome">

## 📊 Create better documentation

<div class="wf-feature">

### Mermaid Diagrams <span class="wf-tier-badge wf-tier-free">Free</span>

Wiki PRO ships with the latest Mermaid rendering engine, supporting all 23 diagram types including flowcharts, sequence diagrams, class diagrams, state diagrams, ER diagrams, C4 architecture diagrams, ZenUML, and Git graphs.
The native Azure DevOps wiki supports only a limited subset (4–11 types depending on the version), so Wiki PRO unlocks modern diagramming on any Azure DevOps version.

<div class="wf-cta"><a href="/support/WikiPro/f-mermaid">Learn more about Mermaid Diagrams →</a></div>
</div>

<div class="wf-feature">

### Draw.io Integration <span class="wf-tier-badge wf-tier-paid">Paid</span>

Embed and edit Draw.io diagrams directly inside wiki pages using the full Draw.io editor — no need to export or upload files manually.
Diagrams are stored as part of the wiki page in Azure DevOps, so they are version-controlled alongside your content and visible in diff views.
Existing Draw.io diagrams can be migrated by importing the exported XML into a `drawio` code block.

<div class="wf-cta"><a href="/support/WikiPro/DrawIO">Learn more about Draw.io Integration →</a></div>
</div>

<div class="wf-feature">

### Version-Controlled Diagrams <span class="wf-tier-badge wf-tier-paid">Paid</span>

Draw.io diagrams are stored with the wiki content, allowing them to be managed and versioned together with the documentation — keeping diagrams with the wiki content they belong to.

</div>

<div class="wf-feature">

### Alerts &amp; Admonitions <span class="wf-tier-badge wf-tier-free">Free</span>

Wiki PRO renders rich callout blocks for notes, tips, warnings, important notices, and cautions — supporting both GitHub Alerts syntax and Docusaurus Admonitions syntax.
This makes it easy to highlight critical information in a visually distinct way, consistent with modern documentation standards.

<div class="wf-cta"><a href="/support/WikiPro/f_alerts">Learn more about Alerts &amp; Admonitions →</a></div>
</div>

</div>

<div class="wf-outcome">

## 🔎 Help people find information faster

<div class="wf-feature">

### My Pages <span class="wf-tier-badge wf-tier-free">Free</span>

My Pages is a personal workspace that gives each user a consolidated view of their wiki activity across all projects and wikis in the organization.
It includes four filters — Favorites, Last Viewed, Last Edited, and Followed — so you can always find the pages that matter most to you without navigating through each project separately.

<div class="wf-cta"><a href="/support/WikiPro/f_my-pages">Learn more about My Pages →</a></div>
</div>

<div class="wf-feature">

### Table of Contents Side Panel <span class="wf-tier-badge wf-tier-free">Free</span>

Provides a persistent page navigation panel based on the headings within the current wiki page, so you can navigate long wiki pages more efficiently.

</div>

<div class="wf-feature">

### Page Tags &amp; Filtering <span class="wf-tier-badge wf-tier-paid">Paid</span>

Assign tags to any wiki page to improve discoverability, topic-based navigation, and governance reporting.
Users can filter pages by tag across the entire wiki, making it easy to find related content regardless of where it sits in the page hierarchy.
Tags can be added, edited, and removed at any time without affecting the page content.

<div class="wf-cta"><a href="/support/WikiPro/PageTags">Learn more about Page Tags &amp; Filtering →</a></div>
</div>

<div class="wf-feature">

### Organization-wide Wiki Promotion <span class="wf-tier-badge wf-tier-free">Free</span>

Promote any project wiki to be visible across the entire Azure DevOps organization, so important knowledge bases are discoverable by everyone — not just members of that project.

</div>

</div>

<div class="wf-outcome">

## 📋 Keep documentation efficient and consistent

<div class="wf-feature">

### Page Templates <span class="wf-tier-badge wf-tier-paid">Paid</span>

Standardize documentation across your organization with reusable page templates.
Templates are available when creating a new page, and administrators can create, edit, delete, and organize templates — as well as set a default.
Common use cases include Architecture Decision Records (ADRs), runbooks, release notes, retrospective notes, meeting notes, and team pages.

<div class="wf-cta"><a href="/support/WikiPro/PageTemplates">Learn more about Page Templates →</a></div>
</div>

<div class="wf-feature">

### Wiki Templates <span class="wf-tier-badge wf-tier-paid">Paid</span>

Create standardized starting structures for new wikis, helping teams follow a consistent organization — so new wikis start with a consistent structure.

</div>

</div>

<div class="wf-outcome">

## 📈 Understand and govern documentation

<div class="wf-feature">

### Wiki Analytics <span class="wf-tier-badge wf-tier-paid">Paid</span>

Track wiki engagement with built-in statistics: most-viewed pages, top contributors, and page view trends over time.
Analytics are available at the wiki level, giving team leads and wiki administrators the insight they need to understand what content is valuable and where improvements are needed.

<div class="wf-cta"><a href="/support/WikiPro/about-wiki-pro#analytics--insights">Learn more about Analytics →</a></div>
</div>

<div class="wf-feature">

### Page Metadata / Tagging <span class="wf-tier-badge wf-tier-paid">Paid</span>

Add structured metadata and tags to wiki pages to improve organization and governance, adding structure and governance to large documentation sets.

</div>

</div>

<div class="wf-outcome">

## 📄 Publish and share professionally

<div class="wf-feature">

### Print Pages &amp; Subpages <span class="wf-tier-badge wf-tier-free">Free</span>

Printing a single page is available in both the native wiki and Wiki PRO free tier.
Wiki PRO free also adds the ability to print a page and all its subpages in one operation.

<div class="wf-cta"><a href="/support/WikiPro/f_Print">Learn more about Printing →</a></div>
</div>

<div class="wf-feature">

### Export to Word <span class="wf-tier-badge wf-tier-paid">Paid</span>

The paid tier adds full Word export: export any page or an entire wiki tree to a `.docx` file, with support for custom Word templates that match your organization's branding.

<div class="wf-cta"><a href="/support/WikiPro/Export">Learn more about Export to Word →</a></div>
</div>

</div>

---

## Ready to try it?

<a href="https://marketplace.visualstudio.com/items?itemName=mskold.mskold-WikiPRO" style="display:inline-block;background:#0078d4;color:#fff;padding:10px 24px;border-radius:4px;font-weight:bold;text-decoration:none;">Install Wiki PRO now →</a>
&nbsp; &nbsp;
<a href="/wiki-pro/pricing/">View pricing &amp; licensing</a>
