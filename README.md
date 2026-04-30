# salesforce-complaint-management-system

Salesforce Complaint Management System

Designed and implemented a Complaint Management System on Salesforce to automate complaint lifecycle tracking, SLA monitoring, escalation workflows, and queue-based routing using Flows and Apex triggers.

Key Features
Designed custom objects: Complaint, Agent, Department with lookup relationships
Implemented record-triggered flows for SLA tracking and escalation automation
Built scheduled-path escalation workflow for unresolved complaints
Configured queue-based routing for escalated complaints
Developed Apex trigger to auto-assign complaint priority based on complaint type
Created dashboards for monitoring complaint status, priority trends, and escalation metrics
  
Architecture Overview

Complaint lifecycle:

Complaint Created
↓
Priority Auto Assignment (Apex Trigger)
↓
SLA Deadline Monitoring (Record-Triggered Flow)
↓
Scheduled Path Execution
↓
Escalation Decision Logic
↓
Queue-Based Assignment
↓
Notifications & Alerts
↓
Dashboard Reporting

**Technologies Used**
Salesforce Platform Cloud
Apex Triggers
Record-Triggered Flows
Scheduled Paths
Queues & Assignment Logic
Reports & Dashboards
Custom Notifications and Emails
Sample Apex Trigger
trigger ComplaintPriorityTrigger on Complaint__c (before insert, before update) {

    for (Complaint__c comp : Trigger.new) {

        if (comp.Type__c == 'Technical') {
            comp.Priority__c = 'High';
        } 
        else if (comp.Type__c == 'Billing') {
            comp.Priority__c = 'Medium';
        } 
        else {
            comp.Priority__c = 'Low';
        }
    }
}
