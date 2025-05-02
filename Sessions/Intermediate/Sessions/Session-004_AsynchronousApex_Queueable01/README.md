# Session 004 – Queueable Apex (Part 1)

In this session, we explored how to use **Queueable Apex** to run asynchronous logic in a more flexible and structured way than future methods.

## ✅ What We Covered

- What is Queueable Apex and when to use it
- Syntax, structure, and how to execute from anonymous block
- How to pass data:
  - Primitive types
  - List of records (List<Contact>)
  - Wrapper class instances
- How to monitor job status via Salesforce Setup & Inspector Reloaded
- Discussion on differences between Queueable, Future, and Batch Apex

## 📁 Folder Structure

- `MyQueueableJob.cls`  
  ➤ Basic queueable job demo to explain syntax and execution

- `ContactUpdaterQueue.cls`  
  ➤ Queueable class receiving a `List<Contact>` and processing it

- `ContactRegionWrapper.cls`  
  ➤ Wrapper class used in more complex data-passing scenarios

- `ContactRegionJob.cls`  
  ➤ Queueable job using the wrapper class as input

---

📌 [Watch the Session on YouTube](https://youtu.be/qu64UAoWDR4)  

