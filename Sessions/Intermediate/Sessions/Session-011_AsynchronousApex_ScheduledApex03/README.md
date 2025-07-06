🚀 **Welcome to Code With Sally!**  
This session is Part 3 of the Scheduled Apex series, focusing on how to schedule both regular Apex logic and Batch Apex, with a strong emphasis on writing clean, testable code.

---

## ✅ What You’ll Learn

- How to schedule regular (non-batch) Apex logic using an Apex Scheduler class  
- How to delegate business logic to a reusable Service class for clarity and separation of concerns  
- How to schedule a Batch Apex job from an Apex Scheduler  
- Best practices for writing unit tests for both regular and batch jobs  
- Real-world pro tips and gotchas from Salesforce projects  

---

## 📁 File Overview

### 🔹 Scheduling Regular Apex

| File | Description |
|------|-------------|
| `OpportunityReminderService.cls` | Contains the core logic for sending reminders. |
| `OpportunityReminderScheduler.cls` | Scheduler class that runs the service logic. |
| `OpportunityReminderServiceTest.cls` | Unit test for the service class. |
| `OpportunityReminderSchedulerTest.cls` | Unit test for the scheduler class. |

### 🔹 Scheduling Batch Apex

| File | Description |
|------|-------------|
| `BackfillOldOpportunities.cls` | Batch class for backfilling opportunity data. |
| `BackfillOpportunityScheduler.cls` | Scheduler class to schedule the batch job. |
| `BackfillOldOpportunitiesTest.cls` | Unit test for the batch class. |
| `BackfillOpportunitySchedulerTest.cls` | Unit test for the batch scheduler. |

### 🧪 Shared Testing Utility

| File | Description |
|------|-------------|
| `TestDataFactory.cls` | Utility class for generating test data across all test classes. |

---

## ▶️ Watch the Full Video

👉 [https://youtu.be/lV6f_idx2Mk]  
🎥 *Part 3: Schedule Regular Apex & Batch Jobs + Best Practices for Unit Testing*

---

## 💬 Questions?

Feel free to leave a comment under the YouTube video or open an issue on this repo!

---