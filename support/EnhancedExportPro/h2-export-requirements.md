---
layout: supportpage
nav_group: How tos 
nav_order: 99
title: Generate requirements documentation  
description: "Enhanced Export PRO makes it easy to generate professional requirements documentation from your project data."
toc: true
---
## Introduction
Enhanced Export PRO makes it easy to generate professional requirements documentation from your project data. Whether you need documentation for stakeholders, developers, auditors, or customers, the export feature allows you to create comprehensive, structured documents in just a few clicks.

## Scope
This article covers generating requirements documentation for sharing, review, and approval purposes — for example, a Requirement Specification document you can send to stakeholders, auditors, or customers.

It does not cover requirements traceability analysis or requirements coverage analytics. For those needs, see the **Traceability report** and **Requirements analytics report** instead.

## Benefits
Using Enhanced Export PRO to export requirements documentation helps you:
* Create consistent, professional documentation.
* Save time compared to manual document creation.
* Share requirements with stakeholders in a standardized format.
* Maintain traceability between requirements and project artifacts.
* Generate documents suitable for reviews, approvals, and audits.

### Step 1: Select or create a query matching the requirements you want to export
In many cases you'll want to export an entire requirement structure, for example Epics, Features, and Stories.

To do so, create a tree query starting at the top level of your hierarchy (such as Epics) and include children. This pulls in all linked child work items at each level below it, so a tree query starting at Epics will include Features and Stories beneath them automatically. If your project uses custom work item types instead of the standard Epic/Feature/Story hierarchy, start the tree query at your top-level type instead.

### Step 2: Run the export 
Click on the export tab and select the **Requirement Specification** template.

## Test cases as part of the requirement specification 
If you want your test cases included as part of the requirement document, you can choose to include an overview of the test cases, and even expand each test case to show its test steps.

To do so:
1. Click on **Options** to open the options form.
2. Check **Include Work item links** and **Expand Work item links**, then select the **Tested By** relation for the Expand Work item links filter.

If a requirement doesn't yet have any linked test cases, that section of the export is simply omitted for that requirement — this is expected for requirements still in early review.

## Test results as part of the requirement specification 
If you would like to include proof of verification, you can choose to include test results as part of the export.

> **Prerequisite:** test results can only be included alongside test cases. Before continuing, follow the steps above under **Test cases as part of the requirement specification** to enable Work item links.

1. Click on **Options** to open the options form.
2. Check the **Include test results** option.
3. If needed, narrow down which results are included:
   - Use the **Test plan** filter to select specific test plans.
   - Use the **Configurations** filter to select specific configurations.

If no test results exist yet for a requirement (for example, before test execution has started), that section is omitted rather than shown as empty.
