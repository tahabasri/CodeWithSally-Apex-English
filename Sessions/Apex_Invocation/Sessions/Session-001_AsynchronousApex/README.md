# 🚀 Session 001: Understanding Asynchronous Apex & Future Methods

This folder contains the code samples and resources used in the **"Salesforce Apex: Understanding Asynchronous Invocation with Future Methods"** video on the [Code With Sally](https://www.youtube.com/@CodeWithSally) YouTube channel.

🎥 **Watch the full session here**:  
https://youtu.be/7TfYHD5TaA4

---

## 📚 What You'll Learn in This Session

- Overview of Apex Invocation Types (Beginner, Intermediate, Advanced)
- What is Asynchronous Apex and why it's important
- Understanding `@future` methods and syntax
- When to use Future Methods
- Demo: Mixed DML Error and how Future Methods solve it
- Intro to Trigger Callouts and Future Methods workaround
- Tips on reading logs for async execution

---

## 📄 Key Files Explained

### 🔹 `MixedDML/`
- `MixedDMLErrorDemo_WithError.cls`: Demonstrates a Mixed DML error when inserting `User` and `Contact` in the same transaction.
- `MixedDMLErrorDemo_WithSolution.cls`: Uses `@future` method to separate transactions and solve the Mixed DML error.

### 🔹 `TriggerCallout/`
- `CountryTriggerHandler.cls`: Handles trigger logic for Country__c records.
- `CountryCalloutUtility.cls`: Makes a callout to fetch country data from the external API.
- `CountryWrapper.cls`: Class used to deserialize the response from the country API.
- `CountryTrigger.trigger`: Trigger that invokes the handler and manages record updates.

> 📁 Other folders like `layouts`, `staticresources`, `Objects`, and `remoteSiteSettings` are included to support the full example if you'd like to deploy and test in your own org.

---

## 🙏 Special Thanks

Big thanks to **Waleed El Hor** for recommending the API used in our live demo!

---

## 📌 Related Learning

- 🔗 [Apex Invocation Types Playlist](https://www.youtube.com/playlist?list=PLeevJTFuNoISrKZ0_Ddk1bTWh2D8VmWlP)
- 🔗 [Beginner Apex Series](https://www.youtube.com/playlist?list=PLeevJTFuNoITnI2Tol-iY4dYSh2JVPd3J)
- 🌐 [Code With Sally Blog](https://codewithsally.com)

---

## 💬 Got a Question?

Feel free to reach out!  
📩 Leave a YouTube comment  
🔗 Connect on [LinkedIn](https://www.linkedin.com/in/sallyelghoul/)  
💬 Or message in Slack if you're part of our learning group

---
