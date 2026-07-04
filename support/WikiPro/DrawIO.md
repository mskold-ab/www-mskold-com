---
layout: supportpage
nav_group: 3_Paid features
menu: Draw.IO diagrams
title: How to add Draw.IO diagrams to wiki pages
description: "Draw.io (also known as diagrams.net) enables teams to create and maintain diagrams directly within Azure DevOps WikiPRO pages."
toc: true
---
# Introduction 
Draw.io (also known as diagrams.net) enables teams to create and maintain diagrams directly within Azure DevOps WikiPRO pages. By embedding diagrams into documentation, teams can visualize architectures, workflows, processes, and system designs while keeping technical documentation centralized and up to date.
This article explains how to create, embed, edit, and manage Draw.io diagrams in Azure DevOps WikiPRO.

Using Draw.io within WikiPRO provides several advantages:
- Create professional architecture and process diagrams.
- Diagrams are stored as part of the version-controlled wiki page.
- Changes in diagrams can be viewed in a diff view, highlighting the actual changes in the chart.
- Diagrams can be changed in Markdown mode by editing the source of the diagram.
- Diagrams can be included in page templates. 
- Reduce dependency on external diagram repositories.

Example of use:
- Architecture Diagrams
  - Application architecture
  - Cloud infrastructure
  - Network topology

- Process Flow Diagrams
  - Business processes
  - Release workflows
  - Incident management procedures

- Development Documentation
  - CI/CD pipelines
  - Deployment workflows
  - System integrations

- Organizational Diagrams
  - Team structures
  - Responsibility matrices
  - Support escalation paths

## Creating a New Diagram

### Step 1: Open the Wiki Page

1. Navigate to the desired WikiPRO page.
2. Select **Edit**.

### Step 2: Insert a Draw.io Diagram

1. Position the cursor where the diagram should appear.
2. Select **Insert** > **Draw.io Diagram** (or the Draw.io toolbar option).

### Step 3: Design the Diagram

1. Use the Draw.io editor to create your diagram.
2. Add shapes, connectors, labels, and icons as required.
3. Save the diagram when complete.

### Step 4: Save the Wiki Page

1. Save the diagram.
2. Return to the wiki editor.
3. Save the wiki page.

The diagram will now be displayed directly within the page.


## Editing an Existing Diagram

To modify a previously created diagram:

1. Open the wiki page containing the diagram.
2. Select **Edit**.
3. Click the diagram.
4. Click the  **Edit** button.
5. Make the required changes in Draw.io.
6. Close the editor.
7. Save the wiki page.

All updates become immediately available to users viewing the page.


## Migrating Existing Diagrams

If your organization already maintains Draw.io diagrams, there are two ways you can move them into WikiPRO.

### Manual exporting and importing

1. Open the diagram in Draw.io.
2. Export the diagram to a JSON or XML file.
3. Open WikiPRO and create a page with a Draw.io diagram.
4. Select Import from device and select the exported file.
5. Save the page.

### Importing diagrams by editing markdown
1. Export the diagram to a .drawio (XML) file.
2. Edit the file and copy the content (XML).
2. Open WikiPRO and edit a page in markdown mode
3. Click on the DrawIO icon in the toolbar or add the following markdown
>\`\`\`drawio
>
>< !-- Line to be replaced by xml content -->
>
>\`\`\`
4. Paste the content in the DrawIO container.
5. Save the page.

The second option is suitable for automation. 





## Summary

Draw.io integration in Azure DevOps WikiPRO provides a simple and effective way to create, maintain, and share visual documentation. By embedding diagrams directly into wiki pages, teams can improve collaboration, simplify knowledge sharing, and ensure technical documentation remains accurate and accessible.
