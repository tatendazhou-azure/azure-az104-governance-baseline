# Azure Governance Baseline – Practical Lab

## Overview

This repository documents a **governance-first Azure setup** implemented on a dedicated lab subscription.
The objective of this lab is to demonstrate **core Azure Administrator (AZ-104) governance skills** using real Azure services and configurations aligned with production best practices.

The focus areas include:

* Cost management
* Resource organization
* Governance enforcement
* Access control
* Protection against accidental deletion

---

## Scope

**Subscription**: AZ104-Lab-Subscription
**Resource Group**: rg-az104-governance
**Purpose**: Training / Governance baseline validation

---

## Governance Components Implemented

### 1. Dedicated Subscription
A separate Azure subscription was created and used exclusively for governance and lab activities.
This isolates costs, policies, and access from other environments.

**Evidence**
`screenshots/subscription-overview.png`

---

### 2. Cost Management (Budgets & Alerts)
A monthly budget was configured at **subscription scope** to proactively manage spend.

* Budget name: `lab-budget-001`
* Budget amount: £10 (monthly)
* Alerts:

  * 80% actual spend → email notification
  * 100% forecasted spend → email notification

This ensures early visibility into unexpected costs.

**Evidence**
`screenshots/budget-created.png`

---

### 3. Resource Tagging Strategy
A standardized tagging model was applied at **resource group level** to support:

* Cost tracking
* Ownership clarity
* Environment classification

**Tags Applied**

| Tag Name     | Value            |
| ------------ | ---------------- |
| Environment  | Lab              |
| Project      | AZ104-Governance |
| CostCentre   | Training         |
| Owner        | Tatenda Zhou     |
| AutoShutdown | Yes              |

**Evidence**
`screenshots/resource-group-tags.png`

---

### 4. Resource Locks
To prevent accidental deletion of critical resources, a **Delete lock** was applied at the **resource group level**.

* Lock type: Delete
* Scope: Resource Group (rg-az104-governance)

This ensures resources cannot be deleted unless the lock is intentionally removed.

**Evidence**
`screenshots/resource-group-delete-lock.png`

---

### 5. Azure Policy (Governance Enforcement)
Azure Policy was used to enforce governance standards.

#### Policy Assignment

* **Policy**: Add a tag to resources
* **Scope**: rg-az104-governance
* **Tag enforced**: Environment
* **Effect**: Ensures resources have required tagging for governance consistency

Policy compliance was verified through the Policy Compliance dashboard.

**Evidence**
`screenshots/policy-compliance.png`

---

### 6. Role-Based Access Control (RBAC)
RBAC was reviewed and validated at **subscription scope**.

* **Role**: Owner
* **Scope**: Subscription
* **Purpose**: Demonstrates privileged access and RBAC inheritance model

> Note: During this lab, the Azure Portal I did not surface the Contributor role in the “Add role assignment” wizard due to a known portal UX limitation. Role definitions were verified, and RBAC is demonstrated through subscription-level role assignments and inheritance.

This reflects real-world Azure administration scenarios where portal behavior may differ across tenants.

**Evidence**
`screenshots/subscription-rbac.png`

---

## Governance-First Design Principles Demonstrated

* Separation of environments using subscriptions
* Cost control before resource deployment
* Mandatory tagging for visibility and accountability
* Protection against accidental deletion
* Policy-driven governance
* RBAC awareness and scope inheritance

---

## Repository Structure

```
azure-governance-baseline/
│
├── README.md
├── screenshots/
│   ├── subscription-overview.png
│   ├── budget-created.png
│   ├── resource-group-tags.png
│   ├── resource-group-delete-lock.png
│   ├── policy-compliance.png
│   └── subscription-rbac.png
│
├── policies/
│   └── README.md
│
└── diagrams/
    └── README.md
```

---

## Outcome

This lab demonstrates the ability to:

* Configure Azure governance controls
* Apply cost and access management best practices
* Operate confidently within Azure subscription and resource group scopes
* Handle real Azure Portal limitations professionally

---

## Author

**Tatenda Zhou**
Azure Administrator (AZ-104 Certified)

---

