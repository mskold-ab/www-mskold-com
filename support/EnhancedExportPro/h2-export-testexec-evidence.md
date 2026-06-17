---
layout: supportpage
nav_group: How tos 
nav_order: 99
title: Export Complete Test Execution Evidence 
toc: true
---


## Introduction

Enhanced Export PRO enables you to generate comprehensive test execution evidence directly from your Test Plans. Instead of exporting only test definitions or summary results, you can create a complete execution document that includes all testing activities, execution outcomes, tester comments, attachments, screenshots, and supporting evidence.

This capability is particularly valuable for audits, compliance reporting, customer acceptance testing, and release sign-off documentation.

### Data integrity
Each export is a point-in-time snapshot of your Test Plan. Azure DevOps identifiers, execution timestamps, and tester attribution are preserved on every record, so auditors and reviewers can always trace an entry in the exported document back to its source in Azure DevOps. In most cases, they are even directly linked.

<div class="gh-alert gh-alert-caution " >
  Because the underlying Test Plan can keep changing after you export it, treat each exported document as a dated, fixed evidence artifact, see Retention and Storage below for naming and archiving recommendations.
</div>

### Scope 
All Test plans exports are done in the scope of a test plan and can provide traceability between planned and executed test effort, test case to requirement traceability and evidence of what has been tested. If you're looking for requirement centric Evidence or traceability, those needs can be met by Work Item Query Exports. For example:

* **Requirement Specification** 
Export deep details about the requirements, the test cases and outcome from potential multiple test plans.


* **Traceability Report**
Exports a traceability grid suitable for Requirement to Test case traceability, with outcome from potential multiple test plans.





### What Is Included in the Export?

Enhanced Export PRO can generate a detailed evidence package containing:

* Test Plan information & Structure 
* Test execution summary
* Individual test cases
* Test result at the test point level: test case, configuration, tester, and outcome (Passed, Failed, Blocked, etc.)
* Test step level result (action, expected result, actual result)
* Execution dates and tester information
* Comments and notes
* Filed Defects (linked to execution)
* Attachments
* Embedded screenshots

The resulting document provides a complete record of what was planned to be tested, how and then the individual test was executed, and the evidence collected during testing.
Enhanced Export PRO preserves Azure DevOps identifiers, execution timestamps, tester attribution, result status, linked defects, comments, and attachments, allowing auditors and stakeholders to trace exported information back to the original Azure DevOps records.

### Common Use Cases

| Use Case                          | Description                                                                                                                                           |
| --------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Audit Evidence**                | Generate a complete testing evidence package for internal or external audits, including execution history, screenshots, and supporting documentation. |
| **Regulatory Compliance**         | Provide documented proof that required test procedures were executed and validated.                                                                   |
| **User Acceptance Testing (UAT)** | Deliver a detailed execution report showing test outcomes and supporting evidence for customer review and approval.                                   |
| **Release Sign-Off**              | Create a comprehensive testing record that demonstrates readiness for production deployment.                                                          |


## Exporting Test Execution Evidence

1. Navigate to the Test Plan that you want to export documentation for
2. Select the **Export** tab 
3. Select the template **Test Execution Log**

This will produce an export like:

<img width="774" height="897" alt="image" src="https://github.com/user-attachments/assets/d5af85db-64e2-4974-8fd9-7674558dedce" />

## Configure what to included in the report 

Click the Options button to configure what you want to include in the export.

<img width="376" height="338" alt="image" src="https://github.com/user-attachments/assets/9d11794f-fdf8-4562-bef8-514bd91bb39a" />

### Options 
Below is a short description of the different options you can check and what it will bring.

#### Include Test results details 
Checking the Include Test Results details will show results on the test step level, including attachments & comments. 

<img width="709" height="432" alt="image" src="https://github.com/user-attachments/assets/427462da-95cb-4a67-8446-cdd4b2bd834a" />

## Generate a document for Archiving/storage/sharing 

Click **Open** and select your desired word template you want to use for formatting.
<img width="551" height="137" alt="image" src="https://github.com/user-attachments/assets/73e65881-9419-4a75-b7e9-748bc53a5aa4" />

Enhanced Export PRO will generate a word document and embed images and other attachments in the word document.

## Retention and Storage
Once generated, the exported Word document is a static file with no further connection to Azure DevOps. We recommend the following practices for audit and compliance use:

* **Name files consistently**, including the Test Plan name and export date, for example TestPlan-1234_ExecutionEvidence_2026-06-17.docx.
* **Store exports in a controlled location**, such as a document management system or a dedicated, access-controlled folder, rather than ad hoc local copies.
* **Re-export before any audit or sign-off deadline** if the Test Plan has changed since the last export, so the evidence reflects the current execution state.
* **Treat each export as a dated snapshot**. If your process requires version history or formal document control, manage that at the storage layer; Enhanced Export PRO does not version exported documents.
