---
layout: page
title: Security
description: "Client-side by design — your data never leaves your Azure DevOps environment."
permalink: /Security/
---
# Security 
Client-side by design — your data never leaves your Azure DevOps environment.


*Last updated: {{ page.last_modified_at | date: '%Y-%m-%d'  }} · Version 1.5.4*
 

At MSkold AB, security is built into every stage of how we design, develop, and deliver our Azure DevOps extensions Enhanced Export PRO, Query Tile PRO and Wiki PRO. We're trusted by thousands of customers, including organizations in highly regulated industries such as banking, life sciences, and defense.

This page summarizes our approach. For full technical detail, Please request our Security Whitepaper or [contact us](mailto:sales@mskold.com).

## Your data stays in your environment

Our core design principle: **customer production data is never transmitted outside your Azure DevOps environment.**

Our extensions runs entirely client-side, inside your browser. We do not operate vendor-hosted servers that process your production data — there's no backend of ours in the data path. This also means the extension works in fully air-gapped environments.

## What data ever leaves your environment

Almost none. The only exceptions:

| Data | Purpose | Handled by |
|---|---|---|
| Billing & contact info | Invoicing, subscription management | Chargebee (PCI-DSS L1, SOC 1 & 2, ISO 27001, GDPR compliant) |
| Payment card data | Payment processing | Stripe, via embedded secure components — we never see or store card data |
| Anonymous usage/performance telemetry | Product improvement | No PII, no production data; auto-deleted after 180 days |

All data in transit is encrypted via TLS. Our supporting infrastructure (subscription proxy, routing) runs on Microsoft Azure, which carries ISO 27001/27017/27018, SOC 1/2/3, and GDPR compliance.

## Built on Azure DevOps' security model

Our extensions runs inside Microsoft's Azure DevOps Extension framework, which provides:

- A sandboxed, isolated execution environment (protected iframe, minimal permissions)
- Authentication and authorization handled entirely by Azure DevOps — we never see or store your credentials. 
- Access governed by your existing Azure DevOps token model and least-privilege permissions

For license assignment, we associate a license with a non-identifiable, extension-provided user ID, stored as extension data within your own Azure DevOps organization. License validation occurs entirely client-side; no user or license assignment data leaves your Azure DevOps instance.

## Secure development practices

We follow a modern Secure Development Lifecycle, including:

- Branch protection and mandatory pull request reviews
- Automated static application security testing (SAST) and OWASP Top 10 validation, using SonarQube and Snyk is done continuously on each build.
- Continuous dependency vulnerability scanning (Snyk & Mend), with critical and high-severity issues prioritized for immediate remediation.
- A deliberately minimal set of third-party libraries, kept current and continuously monitored

## Internal security practices

Being a small, focused team , our security program is lean by design but actively maintained.

**Access control** 
Access to internal systems — Our devops toolchain, cloud infrastructure, and billing tools (Chargebee, Stripe) — is granted on a least-privilege, role-based basis. Because our team is small, access is inherently limited to those who need it for their role.

**Multi-factor authentication**
MFA is required on all internal systems listed above.
Access reviews: Access grants are revoked promptly upon role change or offboarding and reviewed on a yearly cadence.

**Formal policies** 
We maintain documented Information Security, Privacy & Data Protection, Risk Assessment, Secure Development, and Business Continuity policies, reviewed on a yearly cadence.



## Compliance & privacy

We do not process, transmit, or store your Azure DevOps production data under any circumstances — there is no data flow from your environment to us.

For billing and account administration, MSKOLD AB acts as the data controller for the limited contact and billing information needed to manage your subscription (e.g., name, email, invoicing details). This data is processed on our behalf by our payment and subscription infrastructure providers, Chargebee and Stripe, acting as processors under their own compliance certifications (PCI-DSS L1, SOC 1 & 2, ISO 27001, GDPR).

PCI-DSS compliance is maintained via SAQ-A scope, since card data is handled entirely by Stripe's embedded components and never touches our systems.
A Data Processing Agreement (DPA), covering the limited data described above, is available on request.

## Incident response

Given our architecture, the realistic incident surface is limited to: a compromise of our source code or build pipeline (e.g., GitHub, npm), a vulnerability in a shipped extension affecting client-side behavior, or unauthorized access to billing/contact data held by our processors (Chargebee, Stripe).

**Reporting:**
Suspected vulnerabilities or security concerns can be reported to security@mskold.com. We aim to acknowledge reports within 1 business day.

**Triage & response**
Reports are triaged by our CEO, who determines severity and coordinates remediation, including pulling or patching affected extension versions where applicable.

**Customer notification:**
If an incident is confirmed to affect customer data, we notify affected customers via the contact details on file, without undue delay and in any case within 3 business days of confirmation. Where GDPR applies, we separately meet our own obligation to notify the relevant supervisory authority within 72 hours of becoming aware of a qualifying breach.


## Common questions

**Do you manage or patch servers?**
No — we don't operate any servers. Everything we use is managed PaaS/SaaS.

**Do you perform penetration testing?**
We don't run traditional infrastructure pen testing, since there's no infrastructure of ours in the delivery path. Security is ensured through automated SAST/dependency scanning and secure development practices. We support customer-led security assessments where applicable.

**What security headers do you use?**
The delivery layer is controlled by your Azure DevOps instance — Microsoft for cloud customers, your own IT team for on-premises deployments. We have no infrastructure in that layer to configure.

## Further information
Have a specific security, compliance, or data-handling question? 
Contact us at **sales@mskold.com** — or request our full Security Whitepaper.


*Mattias Sköld, CEO, MSKOLD AB*


*Document last reviewed: {{ page.last_modified_at | date: '%Y-%m-%d'  }}*
