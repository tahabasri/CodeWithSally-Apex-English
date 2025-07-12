# Session 012: Scheduled Apex – Part 4  
🔥 Best Practices, Mistakes to Avoid, & Pro Tips

Welcome to the final part of our Scheduled Apex series! This session is all about real-world advice, common mistakes to avoid, and tips that’ll help you master Scheduled Apex with confidence.

---

## 🧠 What You'll Learn

- Do you need a separate Scheduled Apex class to schedule a batch job once? (Spoiler: You don't!)
- How to use `System.scheduleBatch()` instead of writing a schedulable wrapper
- Scheduled job limits (100 per org) and how paused jobs count
- Why you should never bulk-schedule jobs inside triggers
- What happens to scheduled jobs during:
  - Sandbox refresh
  - Salesforce maintenance windows
- How changes to scheduled classes can block deployments (and how to fix it)
- How to avoid callout errors in schedulers
- Pro tips: Helper classes, transient keyword, persistent state
- VS Code snippet demo for faster scheduling
- Async Apex comparison: Future, Queueable, Batch, Scheduled
- 2 fun practice exercises (true/false + async type matching)

---

## 📁 Folder Contents

| File Name                             | Description                                                             |
|--------------------------------------|-------------------------------------------------------------------------|
| `StateDemoScheduler.cls`             | Demo showing how to maintain state in a scheduled class (with state).   |
| `StatelessDemoScheduler.cls`         | Demo showing no state is retained (stateless example).                  |
| `apex_UsefulTemplates.code-snippets` | VS Code snippet to schedule Apex jobs quickly and cleanly.              |
| `Homework/`                          | Practice questions to reinforce learning with image-based exercises.    |

---

## 📝 Homework

Test yourself with two engaging practice sections:

### ✅ Part 1: True or False  
Images:  
- `AsyncHW_TrueFalse_001.png`  
- `AsyncHW_TrueFalse_002.png`

### 🎯 Part 2: Choose the Right Async Type  
Images:  
- `AsyncHW_Type_001.png`  
- `AsyncHW_Type_002.png`  
- `AsyncHW_Type_003.png`

These questions test your understanding of when to use Future, Queueable, Batch, or Scheduled Apex.

---

## ✅ Outcome

By the end of this session, you’ll be able to:
- Apply best practices when using Scheduled Apex
- Avoid common platform and deployment pitfalls
- Know when to use different async Apex types
- Schedule batch jobs without writing a new class
- Use code snippets to speed up development

---

📺 **Watch the full session**:  
[YouTube: Scheduled Apex Part 4 – Best Practices & Pro Tips](https://youtu.be/HDmZL7DkWUU)

💬 **Subscribe for weekly Apex tutorials in English & Arabic!**

---

#Salesforce #ApexScheduler #AsyncApex #SalesforceApex #CodeWithSally
