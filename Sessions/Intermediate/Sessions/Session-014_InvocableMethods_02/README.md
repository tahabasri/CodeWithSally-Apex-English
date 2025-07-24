# 🚀 Session 014 - Invocable Methods (Part 2)

This session builds on our previous work with invocable methods by demonstrating:

- Passing **single values**, **lists**, and **wrapper classes** to invocable methods
- Writing **unit tests**
- Preparing for a hands-on **homework task** involving the `Country__c` custom object

---

## 📁 File Overview & Usage

### `classes/`

| File                             | Purpose                                                                 |
|----------------------------------|-------------------------------------------------------------------------|
| `AssignCaseCategoryAction.cls`   | Invocable method that accepts a **single record Id** and performs logic (used in record-triggered flow). |
| `AssignCaseCategoryActionTest.cls` | Unit test for `AssignCaseCategoryAction.cls` — covers bulk behavior and asserts logic. |
| `TestingFlowAction.cls`          | Invocable method examples to test different **input parameter types**, including List and wrapper classes. |
| `CountryCalloutUtility.cls`      | Utility class used in earlier callout demos — to be reused in your Homework. It is a great example to show invocable method working with utility methods and returning wrapper class. |
| `CountryWrapper.cls`             | Wrapper class to structure complex output from get Country Details API. |

### `layouts/`

| File                                             | Purpose                                                                 |
|--------------------------------------------------|-------------------------------------------------------------------------|
| `Country__c-Country Layout.layout-meta.xml`      | Page layout metadata for `Country__c` custom object, to display fields used in the homework/demo. |

### `objects/Country__c/`

| File                               | Purpose                                                                 |
|------------------------------------|-------------------------------------------------------------------------|
| `Country__c.object-meta.xml`       | Metadata definition for the `Country__c` object. |
| `fields/`, `listViews/`            | Custom fields and list views created for the Country object and required for the demo/homework. |

---

## 🧪 Homework Suggestions

- Write your own testing class for `AssignCaseCategoryAction.cls` and compare it with `AssignCaseCategoryActionTest.cls`.
- Play with `TestingFlowAction.cls` to understand different input types and their usage from flows.
- Create the Custom Object `Country__c` and try implementing the screen flow we discussed, along with its invocable method that uses `CountryCalloutUtility.cls`.
