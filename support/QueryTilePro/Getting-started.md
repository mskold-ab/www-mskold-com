---
layout: supportpage
nav_group: 
nav_order: 1
title:  "Getting started"
toc: true
---

## Introduction 
Query Tile PRO is built to enable you to create dashboard tiles you can't get with the standard Query Tile.

Some features are free to use, while others require a license.
### Free features
+ Support for all query types
+ Filters on query results
+ Different aggregations of field values
+ Calculations at row level
+ Tile styling

### Paid features 
Paid features focus on three things: extended capabilities, performance enhancements, and reducing the time and effort required to build and maintain dashboards.
Examples of paid features are:
+ Multiple Queries 
+ Calculations at result level
+ Charts 
+ Plan & progress view 
+ Grouping
+ Global stylesets
+ Global Queries 
+ Global functions 

## Key concepts 

### Expressions 
In many places, you can provide *expressions*. Expressions follow JavaScript syntax, so you can use JavaScript operators, variables, and functions.
For example:

``` javascript
let a = 0;
a+= Date().getFullYear()==2023?0:1

```

### Macros 
In addition to JavaScript syntax, we also support macros. Macros start with @.
The macros available depend on the location of the expression.
For example, in a row-level expression you could use field macros.
#### Field macros 
Field macros are @ followed by the field reference name, like @System.Descriptions.
So you can write an expression like:

``` javascript
@Microsoft.VSTS.Scheduling.CompletedWork+@Microsoft.VSTS.Scheduling.RemainingWork

//or 
@System.State=="Closed" ? 0:@Microsoft.VSTS.Scheduling.CompletedWork

```
An important thing about field macros is that they only contain the value; they are not typed variables.
If you want to use the Created date as a date object, you need to do this:

``` javascript
Date.parts("@System.CreatedDate")
```


### Calculation engine 
This is simply the engine that stitches all features together so we can pass a tree query and calculate the average of child items.
We have had a major rewrite of the engine to fix bugs, increase performance and make it easier to add new functions. 
Because calculated values (especially for filtered results) might be different with the new engine, we made it possible to keep using the old engine to stay backward compatible and avoid breaking existing customers if your dashboards or KPIs depend on it. The default and recommended engine is the new version.







