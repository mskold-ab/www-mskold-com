---
layout: supportpage
nav_group: Paid features
title: Grouping tiles
toc: true
---

# Introduction 
If you are building dashboards with multiple tiles showing metrics that are computed the same way, but for different inputs or filters (such as team overview dashboards), or showing metrics across different categories, you should definitely look into groups.
Groups can help you:
+ Minimize the effort setting up and maintaining the dashboard 
+ Improve performance of the dashboard 

# An example 
Let's say you are building a dashboard showing overall status across 6 teams and 5 different metrics. To build that dashboard, you need to configure a total of 30 widgets and may need to create up to 30 queries.
That is manually duplicating the configuration 30-60 times.

To build the same dashboard using groups, you would only define 5 widgets and up to 5 queries to produce the same output. Not only that, with groups your dashboard would only need to load 5 widgets and execute up to 5 queries.

# Creating groups 
To define a group, just click on the link that will take you to the Groups tab of Query Tile PRO settings. The default view shows all available groups. 
From here you can create a new group.

## Creating a new group 
Groups are defined by the following common properties:

## Group types 
Groups can be of the following types:

### Root work item 
Returns one group for each work item in the root level of the query

### Team members 
Returns one group for each team member in the dashboard's team. Work items are filtered on the selected field.

### Field 
Returns one group for each unique value in the query's field values.

### Static list 
Defines a list of static values that is matched against the selected field.

## Common group properties 

### Name 
A display name to find and understand the group.

### Sort 
Determines how you want the group sorted 
+ **Existing order** Doesn't change the order.
+ **Sort by group** Sort by the group value.
+ **Sort by value** Sort groups by the calculated values.

# Using groups
To use a group, start by defining your widget in the same way as an ungrouped widget. The only difference is that the query should return data for all group members.

### Adopt the size of the widget. 
As a grouped tile will render multiple tiles, you need to make space by setting the width or height to the number of group items.
Query Tile PRO will take the available space and distribute it evenly between each group. 

## Apply your group 
Select the group name in the list of available groups.

## Format the title of the tile
If you want to display group information in the tile, you can set the Title or Subtitle to @GroupName.















