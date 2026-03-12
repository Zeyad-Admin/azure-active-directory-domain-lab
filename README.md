# Azure Active Directory Domain Lab

## Overview

This lab demonstrates how to deploy a Windows Server Domain Controller and a Windows client in Microsoft Azure.
The client machine is joined to the Active Directory domain hosted on the Domain Controller.

The lab environment includes Azure Virtual Machines, a Virtual Network, Network Security Groups, and Public IP resources.

---

## Lab Infrastructure

Virtual Network
`vm-lab-01-vnet`

Address Space
`10.0.0.0/16`

Subnet
`10.0.0.0/24`

Virtual Machines

* **vm-lab-01** – Windows Server (Domain Controller)
* **CLIENT01** – Windows Client joined to the domain

---

## Azure Infrastructure Screenshots

### Azure Resources

![Azure Resources](screenshots/A02_Azure_VM_Overview_vm-lab-01.png)

### Virtual Network Overview

![Virtual Network](screenshots/A03_Azure_VirtualNetwork_vm-lab-01-vnet.png)

### Subnet Configuration

![Subnets](screenshots)

## Automation Scripts

PowerShell scripts used during the lab setup are included in the `scripts` folder.

- `install-ad-ds.ps1` – Installs Active Directory Domain Services and promotes the server to a Domain Controller.
- `join-domain.ps1` – Joins the Windows client machine to the Active Directory domain.
