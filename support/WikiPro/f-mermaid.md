---
layout: supportpage
nav_group: 2_Free features
nav_order: 99
title: Mermaid Diagrams (including C4, ER, UML) in Azure DevOps Wiki 
menu: Mermaid Diagrams 
toc: true
---
## Introduction
Mermaid is a text-based diagramming syntax that allows you to create different charts/diagrams. 
WikiPRO supports the latest version of Mermaid.
WikiPRO also supports a more modern markdown syntax for mermaid charts

````markdown
```mermaid
flowchart TD
    A[Start] --> B{Decision}
    B -->|Yes| C[Continue]
    B -->|No| D[Stop]
    C --> E[Finish]
```
````

## Supported diagram types 
WikiPRO supports the following diagram types:
- Flowchart (`flowchart`)
- Sequence Diagram (`sequenceDiagram`)
- Class Diagram (`classDiagram`)
- State Diagram (`stateDiagram-v2`)
- Entity Relationship Diagram (ERD) (`erDiagram`)
- User Journey Diagram (`journey`)
- Gantt Chart (`gantt`)
- Pie Chart (`pie`)
- Quadrant Chart (`quadrantChart`)
- Requirement Diagram (`requirementDiagram`)
- Git Graph (`gitGraph`)
- C4 Diagram (`C4Context`, `C4Container`, `C4Component`, `C4Dynamic`, `C4Deployment`)
- Mind Map (`mindmap`)
- Timeline (`timeline`)
- ZenUML Diagram (`zenuml`)
- Sankey Diagram (`sankey-beta`)
- XY Chart (`xychart-beta`)
- Block Diagram (`block-beta`)
- Packet Diagram (`packet-beta`)
- Kanban Board (`kanban`)
- Architecture Diagram (`architecture-beta`)
- Radar Chart (`radar-beta`)
- Treemap (`treemap`)

By embedding Mermaid code blocks in your wiki content, diagrams can be maintained as source text, making them easier to version, review, and update.


## Creating a Mermaid diagram in the rich text editor
Click on the Mermaid icon in the toolbar and select edit on the inserted chart.

## Creating a Mermaid Diagram in the markdown editor
To create a Mermaid diagram, add a fenced code block and specify `mermaid` as the language.

### Example: Flowchart

````markdown
```mermaid
flowchart TD
    A[Start] --> B{Decision}
    B -->|Yes| C[Continue]
    B -->|No| D[Stop]
    C --> E[Finish]
```
````



## Using Mermaid in Documentation

Mermaid diagrams are particularly useful for:

* Application architecture documentation
* Deployment workflows
* CI/CD pipelines
* Business process diagrams
* System integrations
* Database relationship diagrams
* Project timelines

Example CI/CD pipeline:

````markdown
```mermaid
flowchart LR
    A[Code Commit]
    --> B[Build]
    --> C[Test]
    --> D[Deploy to Staging]
    --> E[Production]
```
````

---


## Additional Resources

For advanced diagram syntax, consult the official Mermaid documentation.
