---
description: "Understand Enhanced Export PRO template structure — how Handlebars, data context, partials, and decorators combine to produce polished, professional Azure DevOps export documents."
---
# The Structure of a Handlebars Template

## Introduction

This guide explains how a Handlebars template is put together and where the data it displays comes from.

It assumes basic knowledge of Handlebars syntax — lists, objects, outputting values, loops, conditionals, and comments. If you have no prior knowledge, read *Guide-getting-started-handlebars.md* first. For the editor itself — creating and copying templates, scopes, saving, and the editor tabs — see *Editing-templates.md*.

A Handlebars template gives you full control over how your exported data looks. You write HTML for structure and CSS for styling, use Handlebars expressions to insert data, and add JavaScript for more advanced functionality.

---

## How a Template Is Structured

A template file has four parts that work together:

```
1. <head>                      — Styling (CSS)
2. <SCRIPT type="Handlebars">  — Data preprocessing and helper registration
3. HTML body                   — The output layout, with Handlebars expressions
4. <script>                    — Interactions that run after the page has rendered (JavaScript)
```

### 1. The `<head>` block — styling

This is standard HTML and CSS. You define fonts, colors, table styles, and anything else that controls how your report looks:

```html
<head>
    <style type="text/css">
        body { font-family: 'Segoe UI'; font-size: 12px; }
        th { color: grey; font-weight: bold; text-align: center; }
    </style>
</head>
```

### 2. The `<SCRIPT type="Handlebars">` block — preprocessing

This block runs **before** the template renders. It is where helper functions are registered and data is preprocessed.

> **Important:** Note the special tag `<SCRIPT type="Handlebars">`. The `type="Handlebars"` attribute tells the extension to treat the block as preprocessing. Regular `<script>` tags (part 4) are used for ordinary JavaScript.

```html
<SCRIPT type="Handlebars">
    HandleBars.registerHelper('eq', function(a, b) {
        return a === b;
    });
</SCRIPT>
```

Custom helpers and the other uses of this block are covered in *Guide-custom-helpers.md*.

### 3. The HTML body — template markup

This is the main content of the report. You write HTML and use Handlebars `{{ }}` expressions to insert data:

```html
<table>
    <thead>
        <tr>
            {{#each Columns}}
                <th>{{name}}</th>
            {{/each}}
        </tr>
    </thead>
    <tbody>
        {{#each QueryResults}}
            {{#with fields}}
                <tr>
                    <td>{{[System.Id]}}</td>
                    <td>{{[System.Title]}}</td>
                </tr>
            {{/with}}
        {{/each}}
    </tbody>
</table>
```

### 4. The `<script>` block — interactivity

This is ordinary JavaScript that runs **after** the page has rendered. Use it for behavior in the finished report — for example expanding and collapsing sections, sorting, or other interactions.

## The Data Object

All your query data is available through `data.obj`. The most important properties for work item queries are:

| Property | What it contains |
|---|---|
| `Columns` | List of column definitions (`referenceName`, `name`, `width`, `type`) |
| `QueryResults` | List of work items and their properties |
| `options` | Export settings (see below) |
| `UniqueWorkItems` | Total count of work items |

> To see the exact structure your template receives — and to find the reference name of any field — use the **Data tab** in the editor (see *Editing-templates.md*).

### Accessing a field value

Each item in `QueryResults` has a `fields` object. Access field values like this:

```handlebars
{{#with fields}}
{{[System.Title]}}
{{[System.State]}}
{{[System.AssignedTo]}}
{{[Custom.MyCustomField]}}
{{/with}}
```

> Remember: names that contain dots must be wrapped in square brackets. See *Guide-getting-started-handlebars.md* for the syntax rules.

### The options object

Template options (settings the user configures before exporting) exist in a list and must be converted to a map before use. To let these options affect the template, put this in the `<SCRIPT type="Handlebars">` block:

```javascript
if (Array.isArray(data.obj.options)) {
    var optionsMap = {};
    data.obj.options.forEach(function(opt) {
        optionsMap[opt.propertyName] = opt.value;
    });
    data.obj.options = optionsMap;
}
```

After this, you can check options in the template:

```handlebars
{{#if @root.options.SomeOption}}
    ...
{{/if}}
```

> **Note:** Options are only populated during export, not in preview mode.

---

## Decorators

Decorators are post-processing features that run after the HTML has been generated. They add visual enhancements — for example marking a state value or showing a work item type icon. Decorators find cells by their class name, so the value needs the correct CSS class.

A commonly used decorator is the **state** decorator, which adds a color indicator next to state values:

```handlebars
<td class="System.State">{{fields/[System.State]}}</td>
```

Decorators are enabled per template from the **Properties tab** (under *Default decorators*) or during export — see *Editing-templates.md*.

> **Tip:** If a decorator is not working, check that the CSS class on the element matches what the decorator targets, and that the decorator is enabled for the template.

## Next Steps

- **Custom helpers** — See *Guide-custom-helpers.md* for how to write and register your own helpers.
- **The editor and workflow** — See *Editing-templates.md* for creating and copying templates, scopes, saving, and the editor tabs (Template, Data, Preview, History).
