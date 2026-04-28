---
layout: supportpage
nav_group: Paid features
title: Business Hours
toc: true
---

# Introduction

Standard date-time calculations measure all 24 hours—but your dashboards shouldn't. The **Business Hours** paid feature in Query Tile PRO calculates only the time your business is actually working, giving you accurate KPIs that matter.

Without Business Hours, a ticket that arrives Friday at 5:30 PM and is handled Monday at 9:30 AM shows as "untouched for 65 hours"—when it's actually only been 2 hours of *business time*. This distorts your metrics and masks real performance issues.

![Business Hours settings panel showing configuration options](image-1.png)

## What You Can Do

With Query Tile PRO's Business Hours feature, you can:
- **Calculate actual business time** between two points (not calendar time)
- **Define your working schedule** with custom business days and hours
- **Account for holidays** with configurable calendar imports
- **Customize by department or location** with different business hour rules

---

# Real-World Example

Imagine a support ticket scenario:
- **Arrives:** Friday 5:30 PM
- **Addressed:** Monday 9:30 AM
- **Calendar time:** 65 hours
- **Business time (with Business Hours):** 9 hours

Without this feature, reports show a 65-hour delay. With Business Hours, you see the accurate 9-hour response time—which reveals actual performance and helps you set realistic SLAs.

![Example output showing business hours calculation result](image-2.png)

---

# How to Configure Business Hours

Business Hours settings are managed through the **Query Tile PRO settings panel**.

## Step 1: Access Business Hours Settings

1. Open a Query Tile PRO component
2. Navigate to **Settings** > **Time Calculations**
3. Toggle **Business Hours** to enable this feature

## Step 2: Define Your Business Days

1. In the Business Hours settings, select which days are working days
2. Common configurations:
   - **5-day week:** Monday–Friday
   - **6-day week:** Monday–Saturday
   - **Custom:** Select specific days (e.g., exclude certain days for rotating schedules)

## Step 3: Set Business Hours

1. Define your **start time** (e.g., 9:00 AM)
2. Define your **end time** (e.g., 5:00 PM)
3. These apply to all business days selected in Step 2

## Step 4: Add Holidays

1. Click **Add Holiday** or **Import Holidays**
2. If importing:
   - Use a standard calendar format (iCal/ICS)
   - Upload or paste your holiday calendar
   - Holidays are excluded from business hour calculations
3. Manually added holidays appear in the calendar preview

![Settings panel showing business hours configuration](image.png)

---

# Common Scenarios

**Multiple time zones:** Configure separate Business Hours rules for different departments or regions using multiple Query Tile PRO instances with different settings.

**Rotating shifts:** For 24-hour operations, create a Business Hours setting with midnight-to-midnight coverage, or use "calendar days only" without time restrictions.

**Partial holidays:** If you're open half a day on a holiday, add it as a business day but adjust the hours manually.

---

# Troubleshooting

**Q: My calculations still look like calendar time.**
- Verify Business Hours is toggled **ON** in settings
- Check that the date fields reference the correct columns
- Ensure the function is set to `BusinessHours()` not standard date subtraction

**Q: Holidays aren't being excluded.**
- Confirm the holiday date is added in the correct format
- Check that the holiday date matches the exact date in your data
- Verify your business days are correctly defined (holidays only exclude business days)

**Q: The calculation includes time outside business hours.**
- Review your start and end times—ensure they're in the correct format (24-hour or 12-hour with AM/PM)
- Check for timezone mismatches in your data

---

# Need More Help?

For detailed configuration examples or timezone-specific guidance, see [Getting Started with Query Tile PRO](Getting-started.md) or contact our support team.















