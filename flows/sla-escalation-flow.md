# SLA Escalation Flow (Record-Triggered Flow)

## Purpose

This flow monitors whether a complaint is resolved before its SLA deadline. If the complaint remains open after the deadline, the system automatically escalates it by updating its status and assigning it to a senior support queue.

---

## Flow Type

Record-Triggered Flow  
Object: Complaint__c  
Trigger: When record is created or updated  
Execution: Scheduled Path

---

## Logic Overview

1. Complaint record is created.
2. SLA deadline is calculated based on Department SLA hours.
3. A scheduled path runs at the SLA deadline.
4. Flow checks whether complaint status is still open.
5. If open:
   - Status updated to **Escalated**
   - Complaint assigned to **Senior Support Queue**
6. If already resolved:
   - No action taken

---

## Flow Components Used

- Record-triggered flow
- Scheduled path execution
- Decision element (Complaint Still Open?)
- Update Records element
- Queue-based assignment logic

---

## Business Value

This automation ensures complaints are not missed after SLA deadlines and improves response time by routing unresolved complaints to escalation-level support automatically.
