# Complaint Status Notification Flow

## Purpose

This flow sends notifications when the complaint status changes so that assigned agents stay informed about progress and escalation updates.

---

## Flow Type

Record-Triggered Flow  
Object: Complaint__c  
Trigger: When record is updated

---

## Logic Overview

1. Complaint status changes.
2. Flow detects the status update event.
3. Notification is sent to the complaint owner.
4. Notification includes:
   - Complaint Number
   - Updated Status
   - Related complaint record reference

---

## Flow Components Used

- Record-triggered flow
- Decision element (Status Changed?)
- Send Email / Custom Notification action
- Dynamic record field references

---

## Example Notification Message

Subject:
Complaint Status Updated

Body:
Complaint {Complaint Name} status changed to {New Status}

---

## Business Value

This automation improves visibility for support agents and ensures faster response coordination during complaint handling.
