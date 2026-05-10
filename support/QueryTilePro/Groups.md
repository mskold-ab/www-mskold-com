---
layout: supportpage
nav_group: Paid features
title: Grouping tiles
toc: true
---

# Introduction 
If you are building dashboards with multiple tiles showing metrics that are computed the same way, but for different input/filter such as teams overview dashboards, or showing metrics across different categories, you should definitely look into groups. 
Groups can help you 
+ Minimize the effort setting up and maintaining the dashboard 
+ Improve performance of the dashboard 

# An example 
Let say you building a dashboard showing the overall status across 6 teams across 5 different metrics, to build that dashboard you need to configure a total of 30 widget and roughly creating up to 30 queries.
That is manually duplicating the configuration 30-60 times.

To build the same dashboard using groups you would only define 5 widgets and define up to 5 queries to produce the same output. Not only that - with groups your dashboard would only need to load 5 widgets, and execute up to 5 queries

# Creating groups 
To define a group, just click on the link that will take you to the Groups tab of Query Tile PRO settings. The default view shows all available groups. 
From here you can create a new group

## Creating a new group 
Groups are defined ny the following common properties:

## Group types 
Group can be of the following types 

### Root work item 
Returns one group for each work item in the root level of the query

### Team members 
Returns one group for each team member in the dashboards team. Work items are filtered on the seleced field.

### Field 
Returns one group for each unique value in the queries fields values

### Static list 
Defines a list of static values that is matched against the selected field.

## Common group properties 

### Name 
A display name to find /understand the group

### Sort 
Determines how you want the group sorted 
+ ** Existing order ** doesn't change the order. 
+ ** Sort by group ** Sort by the group value 
+ ** Sort by value ** Sort the groups be the values calculated 

# Using groups
To use a group, you start by defining your widget in the same way you should define an ungrouped widget. The only difference is that the query should return data for all group members 

### Adopt the size of the widget. 
As a grouped tile will render multiple tiles you need to make space by setting the width or height to the number of group items.
Query Tile PRO will take the available space and distribute it evenly between each group. 

## Apply your group 
Select the group name in the list of available groups.

## Format the title of the tile
If you want to display Group information in the tile , you can set the Title or Subtitle to @GroupName















