---
description: "Helpers are JavaScript functions that are called within a template. They let you do things that go beyond the basic conditionals and loops covered in Guide-getting-started-handlebars.md — formatting…"
---

# Custom Helpers

## Introduction

Helpers are JavaScript functions that are called within a template. They let you do things that go beyond the basic conditionals and loops covered in *Guide-getting-started-handlebars.md* — formatting values, building links, computing totals, and more.

This guide shows where to register helpers, which ones are already available, how to write your own, and the one important environment limitation to keep in mind (ES5).

---

## Where to Register Helpers

You can register helpers in two places:
 
- **The `<SCRIPT type="Handlebars">` block** — for helpers closely tied to the data preprocessing for that template
- **The Helpers tab** in the editor — for helpers you want to keep separate from the main template markup

In both cases the syntax is identical.

---

## Standard Helpers

Before writing custom helpers, check what is already registered. The Helpers tab shows the standard helpers that all templates share.

Common helpers that are available in every template include:

| Helper | What it does | Example |
|---|---|---|
| `eq` | Checks if two values are equal | `{{#if (eq type "Bug")}}` |
| `add` | Adds two numbers | `{{add count 1}}` |
| `concat` | Joins strings together | `{{concat "prefix-" id}}` |
| `lookup` | Looks up a property by name | `{{lookup fields referenceName}}` |
| `displayName` | Extracts the display name from an AssignedTo string | `{{displayName fields/[System.AssignedTo]}}` |

> `lookup` is built into Handlebars itself (see *Guide-getting-started-handlebars.md*). The others — `eq`, `add`, `concat`, and `displayName` — are standard helpers provided by the extension.

---

## Registering a Custom Helper

```javascript
HandleBars.registerHelper('myHelper', function(value) {
    if (!value) return 'None';
    return value.toUpperCase();
});
```

> **Note:** The object is called `HandleBars` — with a capital B and it must be spelled exactly this way.

---

## Using a Helper in the Template

A helper is written as {{'helper' 'value' 'arguments'}}:

```handlebars
<td>{{myHelper [System.Title]}}</td>
```

A helper inside a condition needs to be put in parentheses:

```handlebars
{{#if (eq [System.WorkItemType] "Bug")}}
    <span style="color:red">Bug</span>
{{/if}}
```

---

## Outputting Raw HTML from a Helper

If your helper returns an HTML string, wrap it in `new HandleBars.SafeString(...)` to prevent the HTML tags from being shown as plain text:

```javascript
HandleBars.registerHelper('makeLink', function(url, label) {
    if (!url) return '';
    return new HandleBars.SafeString('<a href="' + url + '" target="_blank">' + label + '</a>');
});
```

---

## Writing for ES5

The extension runs in an older JavaScript environment (ES5). This means some modern JavaScript syntax will not work. Use `var` instead of `let`/`const`, write functions with `function() {}` instead of `=>`, and use string concatenation instead of template literals:

```javascript
// Correct
var title = item.fields['System.Title'];
var html = '<td>' + title + '</td>';

// Will not work in this environment
const title = item.fields['System.Title'];  // no const/let
const html = `<td>${title}</td>`;            // no template literals
var fn = (x) => x * 2;                       // no arrow functions
```

---

## Next Steps

- **Template structure** — See *Guide-template-structure.md* for the `<SCRIPT type="Handlebars">` block and the Helpers tab.
- **The editor** — See *Editing-templates.md* for saving and managing templates.