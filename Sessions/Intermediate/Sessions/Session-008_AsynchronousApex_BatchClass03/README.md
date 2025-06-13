# Session 008 – Apex Batch Class (Part 3): Chaining, Callouts, and Snippets

This session is the third and final part of our **Apex Batch** series. We covered advanced batch scenarios like chaining, Queueable from batch, callouts, and shared useful Apex code snippets.

## 🔹 What We Covered

- ✅ What is Batch Chaining and why we use it
- ✅ How to chain batch jobs (Demo: `OpportunityCleanupBatch.cls` → `TaskCleanupBatch.cls`)
- ✅ Can we call Queueable Apex from Batch? (Answer: Yes!)
- ✅ Demo: Queueable job from batch (`NotifyAdminQueue.cls`)
- ✅ Can Batch Apex make API callouts? (Demo: `CountryEnrichmentBatch.cls`)
- ✅ Important considerations for callout limits (100 callouts per transaction)
- ✅ How to abort running batch jobs
- ✅ Q&A: Are records locked during batch runs?
- ✅ Comparison: **Future vs. Queueable vs. Batch**
- ✅ Bonus: Shared **reusable Apex code snippets** and how to use them in VS Code

---

## 📂 Files Included

- `OpportunityCleanupBatch.cls`  
- `TaskCleanupBatch.cls`  
- `NotifyAdminQueue.cls`  
- `CountryEnrichmentBatch.cls`  
- `apex_UsefulTemplates.code-snippets` ← **Future, Queueable & Batch examples**

---

## 🔁 Bonus Included

This session includes **ready-to-use Apex code snippets** for:

- `Future` methods  
- `Queueable` Apex  
- `Batch` Apex  

These are bundled in a `.code-snippets` file for **Visual Studio Code** to help you quickly reuse and insert templates in your own Salesforce projects.

To use:
1. Copy the file to your VS Code `User/snippets/` directory.
2. Start typing the prefix (e.g., `futuredemo`, `batchtemplate`, etc.).
3. Use **Tab** to expand and customize your code.

---

## 📺 Watch the Full Session

[▶️ YouTube Video](https://youtu.be/iYhLE18rvAU)

---

## 📁 Folder Name

`Session-008_AsynchronousApex_BatchClass03`