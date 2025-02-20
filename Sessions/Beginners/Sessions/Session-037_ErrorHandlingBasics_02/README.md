# Salesforce Apex: Try-Catch Placement & Rollback Handling - Part 2  

## 🚀 Overview  
This session covers **critical exception handling strategies**, including:  
✔ Where should you **handle errors** when using **utility classes**?  
✔ How **try-catch placement impacts code execution**.  
✔ How Salesforce **automatically rolls back transactions** unless you use try-catch.  
✔ How to **manually control rollbacks** with savepoints.  

## 📌 Topics Covered  

### **Where Should You Handle Exceptions?**  
📌 **DiscountUtility.cls & OrderProcessor.cls**  
- Why utility classes should **throw exceptions** and let the caller handle them.  
- How handling errors at the right place improves **flexibility**.  

### **How Try-Catch Placement Affects Execution?**  
📌 **TestTryCatchPlacement.cls**  
- Demonstrates how **where you place try-catch** changes execution behavior.  

### **Transaction Rollback & Savepoints**  
📌 **RollbackDemo.cls**  
- **checkNoTryCatchBehaviour()** – Shows how Salesforce automatically rolls back changes on unhandled exceptions.  
- **checkTryCatchBehaviorAlone()** – Shows how once you use try-catch, Salesforce no longer rolls back changes for you.  
- **checkSavepointBehavior()** – Demonstrates **how to use savepoints** for rollback control.  

## 📌 Resources  
🎥 **Watch the Full Session on YouTube**: [https://youtu.be/FJ3Z4iLrgeU]  