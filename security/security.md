


# Security

At MSkold AB, security is built into every stage of how we design, develop, and deliver Enhanced Export PRO. We're trusted by thousands of customers, including organizations in highly regulated industries such as banking, life sciences, and defense.

This page summarizes our approach. For full technical detail, see our [Security Whitepaper](#) or [contact us](mailto:sales@mskold.com).

## Your data stays in your environment

Our core design principle: **customer production data is never transmitted outside your Azure DevOps environment.**

Enhanced Export PRO runs entirely client-side, inside your browser. We do not operate vendor-hosted servers that process your production data — there's no backend of ours in the data path. This also means the extension works in fully air-gapped environments.

## Built on Azure DevOps' security model

Enhanced Export PRO runs inside Microsoft's Azure DevOps Extension framework, which provides:

- A sandboxed, isolated execution environment (protected iframe, minimal permissions)
- Authentication and authorization handled entirely by Azure DevOps — we never see or store your credentials
- Access governed by your existing Azure DevOps token model and least-privilege permissions

For license assignment, we associate a license with a non-identifiable, extension-provided user ID, stored as extension data within your own Azure DevOps organization. No license data leaves your Azure DevOps instance.

## Secure development practices

We follow a Secure Development Lifecycle, including:

- Branch protection and mandatory pull request reviews
- Automated static application security testing (SAST) and OWASP Top 10 validation, using SonarQube and Snyk
- Continuous dependency vulnerability scanning (Snyk & Mend), with critical and high-severity issues prioritized for immediate remediation
- A deliberately minimal set of third-party libraries, kept current and continuously monitored

## What data ever leaves your environment

Almost none. The only exceptions:

| Data | Purpose | Handled by |
|---|---|---|
| Billing & contact info | Invoicing, subscription management | Chargebee (PCI-DSS L1, SOC 1 & 2, ISO 27001, GDPR compliant) |
| Payment card data | Payment processing | Stripe, via embedded secure components — we never see or store card data |
| Anonymous usage/performance telemetry | Product improvement | No PII, no production data; auto-deleted after 180 days |

All data in transit is encrypted via TLS. Our supporting infrastructure (subscription proxy, routing) runs on Microsoft Azure, which carries ISO 27001/27017/27018, SOC 1/2/3, and GDPR compliance.

## Compliance & privacy

- We act as a data processor only for billing-related data handled by our third-party providers — we do not process or store your production data at all
- PCI-DSS compliant via SAQ-A scope
- A Data Processing Agreement (DPA) is available on request

## Incident response

We maintain procedures to identify, investigate, and respond to security incidents. In the event of a confirmed breach affecting customer data, affected customers are notified without undue delay, in line with applicable regulations (including GDPR's 72-hour requirement where relevant).

## Internal security practices

Despite being a small, focused team, we maintain formal Information Security, Privacy & Data Protection, Risk Assessment, Secure Development, and Business Continuity policies. Internal system access is restricted on a least-privilege basis and protected with multi-factor authentication.

## Common questions

**Do you manage or patch servers?**
No — we don't operate any servers. Everything we use is managed PaaS/SaaS.

**Do you perform penetration testing?**
We don't run traditional infrastructure pen testing, since there's no infrastructure of ours in the delivery path. Security is ensured through automated SAST/dependency scanning and secure development practices. We support customer-led security assessments where applicable.

**What security headers do you use?**
The delivery layer is controlled by your Azure DevOps instance — Microsoft for cloud customers, your own IT team for on-premises deployments. We have no infrastructure in that layer to configure.
Have a specific security, compliance, or data-handling question? Contact us at **extension-support@mskold.com** — or request our full Security Whitepaper and Data Processing Agreement.

*Mattias Sköld, CEO, MSKOLD AB*
