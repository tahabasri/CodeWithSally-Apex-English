# Session 020 – Invocable Methods (Part 7): Flex Prompt Template Grounded with Apex

This folder contains the code and metadata used in **Part 7** of the *Salesforce Apex Invocable Methods* series.  
In this session, we explored **Flex Prompt Templates** in Salesforce Prompt Builder and demonstrated how to ground them with **Apex Invocable Methods** to automate real-world scenarios.

---

## 📂 Contents

### 1. Apex Classes
- **`SessionPackPromptTemplate.cls`**  
  Invocable Method that prepares playlist and video data, returning results in a JSON string format to be consumed by the Flex Prompt Template.  
- **`SessionPackPromptTemplate.cls-meta.xml`**  
  Metadata file for the Apex class.

---

### 2. genAiPromptTemplates
- **`CWS_Session_Pack_Generator_Enhanced.genAiPromptTemplate-meta.xml`**  
  Flex Prompt Template for generating YouTube content pack (title, description, timestamps, and announcements).  
- **`Simplified_Template.genAiPromptTemplate-meta.xml`**  
  A simpler version of the Flex Prompt Template with fewer instructions and fields.

---

### 3. Custom Objects
- **`YoutubeVideo__c`**  
  Represents a YouTube video with description, timestamps, and related metadata.  
- **`Playlist__c`**  
  Represents a video playlist (e.g., Intermediate Apex Sessions).  
- **`VideoPlaylist__c`**  
  Junction object linking `YoutubeVideo__c` and `Playlist__c`.

---

## 🧩 Key Concepts Covered
- Creating and configuring **Flex Prompt Templates** in Salesforce.
- Grounding templates with **Apex Invocable Methods**.
- Returning JSON-formatted strings from Apex for structured LLM responses.
- Handling **case sensitivity** between Prompt Template inputs and Apex variables.
- Limitations: Prompt Template inputs **cannot be updated after creation**.
- Options for invoking prompts: **Apex, Flow, REST API**.

---

## ▶️ YouTube Video
Watch the full session here:  
https://youtu.be/iD7exCzkL-Q

---

## 🔗 Previous Sessions in the Series
- Part 1 – What They Are & How to Use in Record-Triggered Flows: https://youtu.be/XMD8yH554WA  
- Part 2 – Passing Lists & Wrapper Classes, Unit Testing: https://youtu.be/MsVQomNIsms  
- Part 3 – Screen Flow + Callout Demo (Real API Example): https://youtu.be/6rwsQaqGwig  
- Part 4 – Understanding Prompt Templates: https://youtu.be/2mSodIJoMV4  
- Part 5 – Sales Email Prompt Template Grounded with Apex: https://youtu.be/7Gmn3dX0RKg  
- Part 6 – Field Generation Prompt Template Grounded with Apex: https://youtu.be/slY-c9D8_Fw  