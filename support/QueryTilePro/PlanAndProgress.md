---
layout: supportpage
title:  "Plan and Progress view"
categories: jekyll update
toc: true
---

## Introduction 
The Plan & Progress view is built to provide an visualization like Delivery plan, but for the dash board. It simple takes a set of work items and put them on a timeline. 

## Data source 
The Plan & progress view works with all query types, but if you select an hierarcial query, you wil get the structutre rendered. 

## How items are placed on the time line
In the plan 
### Start and target dates 
First it tries with the standard fields - (Microsoft.VSTS.Scheduling.StartDate & Microsoft.VSTS.Scheduling.TargetDate)

### Any field containg StartDate and EndDate 
If not the standard date fields is pressent, it check for any fields with their ref names containing StartDate and EndDate

### Iteration dates
If not date fields are found, the iteration start and end date will be used as the start and end date 

## Showing progreess
The Plan & Progress view can show progress by meassuring it by 

### Count
Progress is measured in the number of work items, (per state and the total)

### Remaining & Completed 
uses the fields for remaining and completed work - (Microsoft.VSTS.Scheduling.RemainingWork & Microsoft.VSTS.Scheduling.CompletedWork)

### Expression 
Evaluates 2 javascript expressions, to get the Remaining and Completed work (so you can use your custom fields like "@Custom.IDidntUseTheStandardFields4Completed"


