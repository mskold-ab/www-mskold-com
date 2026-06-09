---
layout: supportpage
nav_group: Paid features
title: DrawIO
toc: true
---

# Introduction 
Draw.io (also known as diagrams.net) enables teams to create and maintain diagrams directly within Azure DevOps WikiPRO pages. By embedding diagrams into documentation, teams can visualize architectures, workflows, processes, and system designs while keeping technical documentation centralized and up to date.
This article explains how to create, embed, edit, and manage Draw.io diagrams in Azure DevOps WikiPRO.

Using Draw.io within WikiPRO provides several advantages:
- Create professional architecture and process diagrams.
- Diagrams are stored as part of the wiki page versioned controlled wiki page.
- Changes in diagrams can be viewed in a diff view, higlight the actual change of in the chart.
- Diagrams can by changed in markdown mode by editing the soure of the diagram.
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


## Embedding Existing Diagram Files

If your organization already maintains Draw.io files:

1. Upload the `.drawio` file to the supported repository or storage location.
2. Insert the diagram into the WikiPRO page.
3. Select the existing diagram file.
4. Save the page.

This approach allows teams to reuse diagrams across multiple documentation pages.

---




## Summary

Draw.io integration in Azure DevOps WikiPRO provides a simple and effective way to create, maintain, and share visual documentation. By embedding diagrams directly into wiki pages, teams can improve collaboration, simplify knowledge sharing, and ensure technical documentation remains accurate and accessible.
