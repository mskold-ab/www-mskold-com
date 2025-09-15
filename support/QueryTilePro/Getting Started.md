---
layout: support-page
title:  "Getting started"
date:   2025-09-13 14:09:57 +0000
categories: Generall
toc: true
---

## Introduction 
Query Tile PRO is built to enable you to create the tiles for dashboard you cant get with the standard Query Tile

Some features are free to use, while other require a licence. 
### Free features
+ Support all Query types
+ Filters on query result 
+ Different aggregations of all field values 
+ Calculations on row level
+ styling tile 

### Paid features 
+ Multiple Queries 
+ Calculations on result level
+ Charts 
+ Plan & progress view 
+ Grouping
+ Globa stylesets 
+ Global Queries 
+ Global functions 

## Key concepts 

### Expressions 
In many places you can provide *expressions*. Expressions follows Javascript syntax, so you can use Javascript operators, variables, functions. 
For example 

``` javascript
let a = 0;
a+= Date().getFullYear()==2023?0:1

```

### Macros 
In addition to the javascipt syntax, we also support macrons. Macros starts with @. 
The macros available depends on the localtion for the expressions.
For example in a row level expression you could use fields macros 
#### Field macros 
Field macros is @ followed by the fields reference name, like @System.Descriptions 
So you can do an expressions like 

``` javascript
@Microsoft.VSTS.Scheduling.CompletedWork+@Microsoft.VSTS.Scheduling.RemainingWork

//or 
@System.State=="Closed" ? 0:@Microsoft.VSTS.Scheduling.CompletedWork

```
Important with field macros is that they only contians the value, it is not a typed variable. 
If you want to use the Created date as a date object you need to do like this 

``` javascript
Date.parts("@System.CreatedDate")
```


### Calculation engine 
This is simple the engine that stitch all features together so we can pass a tree query and calculate the average of the child items. 
We have had a major rewrite of the engine to fix bugs, increase performance and make it easier to add new functions. 
As the calculated value (specially for filtered results) might be different with the new engine. To be backward compatible and ensure we do not break existing customers - we have made it possible to keep using the old engine if your dashboards or KPI depends on it. The default and recomended engine is the new version. 







