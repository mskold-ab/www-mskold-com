# Getting Started with Handlebars

## Introduction
Handlebars is a templating language. You write HTML and use special expressions wrapped in curly braces, like `{{name}}`, to insert data or use a function.

This guide covers basic Handlebars syntax: lists, objects, outputting values, built-in helpers, and comments. No prior experience is required. If you have used XSLT templates before, you will recognize many of the ideas — only the syntax is different.

Once you are comfortable with the basics, see *Guide-template-structure.md* to learn how a template is put together, where its data comes from, and how to edit and test one.

---

## Lists and Objects

Your data is built from two building blocks: lists and objects.

### List

A list is an ordered collection of items. It is written with square brackets `[ ]`:

```json
"Columns": ["column_1", "column_2", "column_3"]
```

### Object

An object is a collection of "key–value" pairs. It is written with curly braces `{ }`. Each key has a value ("key": "value"):

```json
"column_1": {
    "referenceName": "System.Id",
    "name": "ID",
    "width": 75,
    "type": "Integer"
}
```

Lists and objects can be nested inside one another. A common structure is a list containing objects:

```json
"Columns": [
    {
        "referenceName": "System.Id",
        "name": "ID",
        "width": 75,
        "type": "Integer"
    },
    {
        "referenceName": "System.WorkItemType",
        "name": "Work Item Type",
        "width": 75,
        "type": "String"
    }
]
```

> **Why this matters:** Looping and value lookups (below) are about walking through lists and reaching into objects. Recognizing the two shapes makes the rest of Handlebars easier.

---

## Outputting a Value

To output a value, wrap its name in double curly braces:

```handlebars
{{name}}
```

Names that contain dots — for example `System.Title` — needs to be wrapped in square brackets:

```handlebars
{{[System.Title]}}
```

Some values are formatted with HTML. Double braces would print the raw HTML tags as regular text. Use **triple** braces to render the HTML correctly:

```handlebars
{{{[System.Description]}}}
```

---

## Built-in Helpers

Helpers are functions used inside a template. A few are built in and always available, but you can also write your own — see *Guide-custom-helpers.md*.

### Looking up a value

If a value's name is unknown (e.g. it comes from a variable), the `lookup` helper can be used to fetch the value using a name stored in another value.

Example: when looping over `Columns`, each column carries a `referenceName` and you want the field value that matches it.

```handlebars
{{#each Columns}}
    <td>{{lookup ../fields referenceName}}</td>
{{/each}}
```

> Here `referenceName` comes from the current column, and `lookup` uses it to find the matching value in `fields`. The `../` steps up one level to reach `fields`, which exists outside the `Columns` list — see *Loops* below.

### Conditionals

Use `#if` to do something only when a value exists or is true. Add `{{else}}` to provide a fallback:

```handlebars
{{#if [System.AssignedTo]}}
    <td>{{[System.AssignedTo]}}</td>
{{else}}
    <td>Unassigned</td>
{{/if}}
```

### Loops

Use `#each` to repeat a block once for every item in a list. Inside the loop, `this` refers to the current item:

```handlebars
{{#each attachments}}
    <tr>
        <td>{{this.name}}</td>
        <td>{{this.comments}}</td>
    </tr>
{{/each}}
```

**Reaching outside the loop** Within a loop you are "inside" the current item. To reach something from the outer level, prefix it with `../`:

```handlebars
{{#each Columns}}
    <td>{{lookup ../fields referenceName}}</td>
{{/each}}
```

**Simplifying nested access** When working inside a nested object, `#with` sets the context to that object so you can reference its keys directly, without repeating the prefix. Use `../` to step back out when you need something from the outer level:

```handlebars
{{#each QueryResults}}
    {{#with fields}}
        <td>{{[System.Title]}}</td>
        <td>{{[System.State]}}</td>
        <td>{{../id}}</td>   {{!-- ../ steps out of fields, back to the QueryResult item --}}
    {{/with}}
{{/each}}
```

### Calling a helper

To call a helper, write its name followed by its arguments. Helpers can be combined with the built-ins like `#if`. The example below uses a custom `eq` helper (covered in *Guide-custom-helpers.md*) to check whether two values are equal:

```handlebars
{{#if (eq [System.WorkItemType] "Bug")}}
    <span style="color:red">Bug</span>
{{/if}}
```

---

## Comments

Use comments to explain your logic, leave notes, or temporarily disable a block. Comments never appear in the output:

```handlebars
{{!-- This is a comment and will not appear in the output --}}
```

---

## Next Steps

- **Put it together** — See *Guide-template-structure.md* to learn how a template is structured, where the data comes from, and how to edit and test one.
- **Write your own helpers** — See *Guide-custom-helpers.md*.