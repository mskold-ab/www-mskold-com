---
layout: supportpage
nav_group: 4_Frequently Asked Questions
nav_order: 1000
title:  "FAQ - Query Tile PRO"
description: "Query Tile PRO FAQ — frequently asked questions about features, Azure DevOps Server compatibility, licensing, and how Query Tile PRO."
menu: "FAQ"
toc: true
---

# Query Tile PRO Frequently Asked Questions

## Getting Started

### What is Query Tile PRO?

Query Tile PRO is an advanced Azure DevOps dashboard widget that extends the capabilities of the standard Query Tile. It allows you to build dashboards with advanced calculations, aggregations, conditional formatting, charts, expressions, grouping, and custom visualizations based on Azure DevOps work item queries.

---

### Do I need a paid license?

No.

Query Tile PRO includes a permanent set of free features that can be used without a subscription.

Advanced capabilities require either:

- An active subscription
- An active trial

---

### What happens after my 30-day trial expires?

Nothing on your dashboards is deleted.

- Widgets using only free features continue working normally.
- Widgets using paid features display a locked indicator instead of the calculated value.
- Your widget configuration remains intact, so purchasing a license later immediately restores functionality.

---

## Licensing

### How are licenses assigned?

The free trial is organization-wide, allowing everyone in your Azure DevOps organization to evaluate the paid features.

After purchasing a subscription, licenses can be assigned to specific teams.

---

### Can I purchase through purchase order or bank transfer?

Yes.

For larger purchases we support invoicing and bank transfer. Contact our support team before purchasing to discuss available payment options.

---

### Can I purchase through Microsoft billing?

No.

Microsoft discontinued billing for third-party Azure DevOps Marketplace extensions. We therefore provide alternative purchasing options directly.

---

### How can I view my licenses or activation date?

If you purchased through a reseller or need information about your licenses, contact support and we can provide your license details.

---

## Calculations

### Can I perform calculations on query results?

Yes.

Query Tile PRO supports several aggregation methods:

- Count
- Sum
- Average
- Minimum
- Maximum
- Count Distinct

You can also apply mathematical expressions to create custom KPIs such as:

- Percentage complete
- Average velocity
- Throughput
- Ratios
- Custom business metrics

---

### Can I divide a result after aggregation?

Yes.

The simplest approach is to use the **Result Format** field.

Example:

```text
=@value/3
```

This divides the aggregated result by three.

Common uses include:

- Average sprint velocity
- Average throughput
- Average completed work items

---

### Why doesn't my expression work?

The most common causes are:

- Using `@value` where a work item field reference is required.
- Incorrect field reference names.
- Mixing record-level expressions with aggregated calculations.
- Invalid JavaScript syntax.

If an expression works for built-in fields but not custom fields, verify that the custom field reference name is correct.

---

### Can I calculate weighted averages?

Yes.

Weighted averages are supported through the Advanced Calculation Engine.

---

### Can I combine multiple queries in one calculation?

Yes.

The Advanced Calculation Engine allows multiple named queries to be combined into a single expression.

Example:

```text
a1 / (a2 + a3 + a4)
```

---

## Formatting

### How do I format percentages?

Use the **Result Format** field.

Examples:

- `P0`
- `P1`
- `P2`

---

### How do I round numbers?

Result formatting supports standard numeric formats.

You can also use JavaScript expressions.

Example:

```text
=@value/8;N1
```

---

### Can I convert milliseconds into days?

Yes.

Lead Time and Cycle Time values can be converted using either JavaScript date formatting or mathematical conversion.

Examples:

```text
=@value/(24*3600*1000)
```

or

```text
=new Date(@value)
```

---

## Conditional Formatting

### Can I change tile colors based on values?

Yes.

Conditional formatting supports:

- Thresholds
- Ranges
- Traffic light indicators
- Custom style rules

---

### Can I compare two fields for conditional formatting?

Yes.

This is supported using the Advanced features.

Example:

- Green when Actual ≥ Target
- Yellow when Actual ≥ 70% of Target
- Red otherwise

---

### Can I color tiles based on text values?

Yes.

Conditional formatting can evaluate expressions returning values such as:

- Green
- Amber
- Red

---

## Queries

### Can I use hierarchy queries?

Yes.

Hierarchy queries are supported.

You can aggregate:

- Parent items
- Child items
- Entire work item trees

Advanced calculation options provide additional filtering capabilities.

---

### Can I filter the work items when clicking a tile?

Usually not.

Expressions are evaluated after the Azure DevOps query has executed, so they cannot always be translated back into a work item query filter.

---

### Can I compare data from different years or different queries?

Yes.

This is a common scenario and can be achieved using calculations across multiple queries.

---

## Charts

### Why doesn't my pie chart match the tile count?

This is usually related to grouping or null values.

If chart totals appear incorrect, verify:

- Grouping configuration
- Null values
- Hierarchy queries
- Cross-project queries

If the issue persists, contact support.

---

### Can I group charts by custom fields?

Yes.

Charts support grouping by most Azure DevOps fields, including custom fields.

---

## Widget Errors

### My widget shows "Query Tile PRO has a problem"

Possible causes include:

- Azure DevOps service outages
- Browser extensions
- Corporate firewall policies
- Ad blockers
- Antivirus software
- Temporary Microsoft service disruptions

If multiple users experience the issue simultaneously, check the Azure DevOps Service Health page first.

---

### I receive "An undefined error occurred"

This typically indicates:

- A temporary Azure DevOps communication issue
- An invalid expression
- A browser-related issue

Review your expressions first. If the problem continues, contact support.

---

## Security & Privacy

### Does Query Tile PRO send my work item data outside Azure DevOps?

No.

Work item data remains inside your Azure DevOps environment.

The extension stores its configuration using Azure DevOps Extension Storage.

Anonymous telemetry may be collected to improve the product, but customer work item data is never transferred outside your Azure DevOps organization.

---

### Why does the extension request Work Items (Read) permission?

The extension requires read access to retrieve work item data.

Configuration such as styles, saved settings and global configurations is stored using Azure DevOps Extension Storage.

---

### Can Query Tile PRO run in isolated or air-gapped environments?

Yes.

The extension can run in fully isolated Azure DevOps Server environments.

---

## Customization

### Can I customize tile titles and subtitles?

Yes.

Titles, subtitles and formatting can all be configured from the widget settings.

---

### Can I display values across multiple lines?

Not currently.

Multi-line output is not currently supported.

---

### Can I create list-style dashboards instead of tiles?

Not yet.

This is one of the most frequently requested features and is under consideration for a future release.

---

## Troubleshooting

### My calculations suddenly started returning zero. What should I check?

This can happen if:

- A field reference has changed.
- A custom field is unavailable.
- An expression contains an error.
- Azure DevOps has introduced a temporary service issue.

Verify your expression first. If existing dashboards suddenly stop working without configuration changes, contact support.

---

### Why do my dashboard widgets suddenly stop working after an Azure DevOps update?

Occasionally Microsoft service updates can temporarily affect dashboard widgets.

If multiple widgets across multiple dashboards fail simultaneously:

1. Check the Azure DevOps Service Health status.
2. Refresh your dashboard after the service issue has been resolved.
3. Contact support if the problem continues.

---

## Support

### How do I report a bug?

Please include:

- Widget configuration
- Query definition
- Screenshots
- Extension version
- Browser information
- Steps to reproduce the issue

This information allows us to investigate much more quickly.

---

### How can I request a new feature?

We actively review customer feedback.

Frequently requested features include:

- List-based widgets
- Additional chart types
- Enhanced hierarchy support
- More conditional formatting options
- Additional calculation functions
- More advanced filtering capabilities

If you have a feature request, we'd love to hear from you.
