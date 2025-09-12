# Session-018: Invocable Methods (Part 5) - Sales Email Prompt Template Grounded with Apex

In this session, we demonstrate how to build a **Sales Email Prompt Template** grounded with an Apex Invocable Method to reduce hallucinations and generate dynamic property suggestions based on real data.

Our use case simulates a real estate agent following up with a client by showing the property of interest and suggesting similar properties — all generated through a grounded prompt template.

---

## 🧠 Key Concepts

- How to enable **AI Capabilities** and **Sales Emails** in your Salesforce Org.
- Required **Permission Sets** for Prompt Builder and Sales Email features.
- How to create a **Sales Email Prompt Template** and test it.
- How to write an **Apex Invocable Method** that supports Prompt Templates using the correct capability type.
- Demonstration of:
  - String concatenation
  - JSON serialization for `List<SObject>`
  - JSON serialization for `List<CustomWrapper>`

---

## 🧩 Files Included

### ⚙️ Apex Classes

- `PropertySimilarSalesEmailAction_Simplified.cls`  
  ➤ Contains a basic `findSimilarProperties()` method that queries similar properties and serializes the `List<SObject>` as JSON string.

- `PropertySimilarSalesEmailAction_Advanced.cls`  
  ➤ Demonstrates an advanced version with **dynamic SOQL**, filtering logic, and returning results using a wrapper class.

### 📄 Prompt Template Files

- `genAiPromptTemplates/Similar_Properties_Email.genAiPromptTemplate-meta.xml`  
  ➤ Prompt Template definition used in the demo (includes merge fields and Apex grounding setup).

- `genAiPromptTemplates/PromptTemplateText`  
  ➤ Raw prompt template text with merge fields that drive the generation logic.

---

## 🔗 Helpful Links

- [Create a Playground with Sales Email Enabled](https://trailhead.salesforce.com/content/learn/projects/quick-start-create-a-sales-email-prompt-template/get-started-with-sales-email-prompt-templates)  
- [Install Dreamhouse App](https://trailhead.salesforce.com/content/learn/projects/quick-start-dreamhouse-sample-app/deploy-the-app-dreamhouse)  
- [Ground Your Prompt Templates with Apex (Salesforce Help)](https://help.salesforce.com/s/articleView?id=ai.prompt_builder_ground_apex.htm&type=5)  
- [Salesforce Developer Blog: Ground with Flow or Apex](https://developer.salesforce.com/blogs/2024/04/ground-your-prompt-templates-with-data-using-flow-or-apex?utm_source=chatgpt.com)

---

## ▶️ Watch the Full Video

**YouTube Video:**  
https://youtu.be/7Gmn3dX0RKg

---

## 🧵 Related Videos in This Series

1. **Part 1:** What They Are & How to Use in Record-Triggered Flows  
   https://youtu.be/XMD8yH554WA  
2. **Part 2:** Passing Lists & Wrapper Classes, Unit Testing  
   https://youtu.be/MsVQomNIsms  
3. **Part 3:** Screen Flow + Callout Demo | Real API Example  
   https://youtu.be/6rwsQaqGwig  
4. **Part 4:** Understanding Prompt Templates  
   https://youtu.be/2mSodIJoMV4

---

## 🙌 Follow & Share

If you found this helpful, please give the video a 👍, leave a comment, and **subscribe** to [Code With Sally](https://www.youtube.com/@codewithsally) on YouTube!
