---
layout: supportpage
nav_group: Paid features
title:  "Plan and Progress view"
toc: true
---

## Introduction 
The Plan & Progress view is built to provide a visualization like Delivery Plan, but for the dashboard. It simply takes a set of work items and puts them on a timeline.

## Data source 
The Plan & Progress view works with all query types, but if you select a hierarchical query, you will get the structure rendered.

## How items are placed on the time line
In the plan 
### Start and target dates 
First, it tries the standard fields (Microsoft.VSTS.Scheduling.StartDate and Microsoft.VSTS.Scheduling.TargetDate).

### Any field containing StartDate and EndDate 
If the standard date fields are not present, it checks for any fields with reference names containing StartDate and EndDate.

### Iteration dates
If no date fields are found, the iteration start and end dates will be used.

## Showing progress
The Plan & Progress view can show progress by measuring it by 

### Count
Progress is measured in the number of work items, (per state and the total)

### Remaining & Completed 
Uses the fields for remaining and completed work (Microsoft.VSTS.Scheduling.RemainingWork and Microsoft.VSTS.Scheduling.CompletedWork).

### Expression 
Evaluates two JavaScript expressions to get the Remaining and Completed work (so you can use your custom fields, like "@Custom.IDidntUseTheStandardFields4Completed").


