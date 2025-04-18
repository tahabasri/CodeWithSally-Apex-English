# Session 003 – Understanding `implements` in Apex

This session explores the meaning and purpose of `implements` in Apex — a crucial foundation before diving into async patterns like Queueable, Batchable, and Schedulable.

🎥 **Watch the video**: [YouTube Link](https://youtu.be/edDf1_CBaX4)

---

## 🔍 What We Covered

- Why we’re covering interfaces before Queueable
- What `implements` means in Apex
- What is an interface & why it matters
- Interface syntax and implementation
- Using interfaces for polymorphism
- Implementing multiple interfaces in a single class
- How interface changes impact implementing classes
- Interface naming conventions
- When & why Salesforce uses interfaces (Queueable, Batchable, etc.)

---

## 📁 Folder Structure & Demo Breakdown

This session contains 4 demos to explore interface behaviors in Apex:

- **`OneInterfaceOneMethodDemo/`**
  - `Exportable.cls`
  - `AccountExporter.cls`
  - `ContactExporter.cls`  
  ➤ Demonstrates one interface with a single method implemented in two classes.

- **`OneInterfaceTwoMethodsDemo/`**
  - `Exportable.cls` (updated with 2 methods)
  - `AccountExporter.cls`
  - `ContactExporter.cls`  
  ➤ Shows how changes to an interface impact the implementing classes.

- **`TwoInterfacesDemoWithoutExtraMethods/`**
  - `Exportable.cls`
  - `Loggable.cls` (second interface)
  - `AccountExporter.cls`
  - `ContactExporter.cls`  
  ➤ Demonstrates multiple interface implementation.

- **`TwoInterfacesWithExtraMethods/`**
  - `Exportable.cls`
  - `Loggable.cls`
  - `AccountExporter.cls`
  - `ContactExporter.cls`  
  ➤ Includes additional class-specific methods outside of interface scope.

---

In the next session, we’ll return to async Apex and finally explore **Queueable Apex** with practical examples!

---

## 📺 Missed the previous sessions?

- **Part 1 – Future Methods (Intro)**: https://youtu.be/7TfYHD5TaA4  
- **Part 2 – Future Methods + Trigger Callout Fix**: https://youtu.be/4MZ_DzRvDo8

---

Happy coding!  
— [Code With Sally](https://www.youtube.com/@CodeWithSally)