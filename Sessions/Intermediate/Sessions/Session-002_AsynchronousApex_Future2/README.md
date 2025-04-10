# 🚀 Session 002 – Future Methods in Apex (Part 2)

This session is the **final part of our deep dive into Future Methods** in Salesforce Apex. It focuses on **real-world callout scenarios**, **API integration**, **JSON handling**, and **unit testing future methods**.

🎥 **Watch the full session here:**  
[Salesforce Apex: Future Methods (Part 2) – Trigger Callouts, JSON, API & Testing](https://youtu.be/4MZ_DzRvDo8)

📺 **Watch Part 1 here:**  
[Salesforce Apex: Understanding Asynchronous Invocation with Future Methods](https://youtu.be/7TfYHD5TaA4)

---

## 📚 What You'll Learn in This Session

- What is an API and how to explore it using Postman
- What is JSON and how to use the `JSON` class in Apex
- Deserializing JSON into Apex wrapper classes
- Serializing Apex objects to JSON
- Making callouts from Apex using `HttpRequest` and `HttpResponse`
- Remote Site Settings: why they're required and how to configure them
- Solving the **Trigger Callout Limitation** with `@future(callout=true)`
- Writing unit tests for future methods
- Mocking HTTP responses using `HttpCalloutMock`
- Understanding limitations of future methods:
  - No guaranteed execution order
  - No chaining support
  - How these affect architecture choices

---

## 🧪 Folder Structure & File Descriptions

Session-002_AsynchronousApex_Future2/ │ ├── FutureMethodOrder/ │ └── FutureOrderDemo.cls # Demonstrates lack of control over future execution order │ ├── JSON Sample/ │ ├── SampleDeserialize.txt # Code to deserialize JSON into Apex │ ├── SampleSerialize.txt # Code to serialize Apex objects to JSON │ └── SimpleCountryWrapper.cls # Wrapper class for the country API response │ ├── MixedDML/ │ ├── MixedDMLErrorDemo_WithSolution.cls # Code showing how to fix Mixed DML with @future │ ├── MixedDMLErrorDemoTest.cls # Unit test class for Mixed DML logic │ ├── TriggerCallout/ │ ├── classes/ │ │ ├── CountryCalloutUtility.cls # Makes HTTP callout to country API │ │ ├── CountryMockResponse.cls # Mocks API response for unit testing │ │ ├── CountryTriggerHandler.cls # Uses @future(callout=true) to invoke utility │ │ ├── CountryTriggerHandlerTest.cls # Test class using HttpCalloutMock │ │ └── CountryWrapper.cls # Apex wrapper for deserializing JSON │ ├── flexipages/ │ │ └── Country_Record_Page.flexipage-meta.xml │ ├── layouts/ │ │ └── Country__c-Country Layout.layout-meta.xml │ ├── Objects/Country__c/ │ │ └── Country__c.object-meta.xml │ ├── postmanCollection/ │ │ └── REST Countries API.postman_collection.json │ ├── remoteSiteSettings/ │ │ └── CountryEndPoint.remoteSite-meta.xml │ └── triggers/ │ └── CountryTrigger.trigger


---

## 🧠 Developer Resources

- [Apex JSON Class Reference](https://developer.salesforce.com/docs/atlas.en-us.apexref.meta/apexref/apex_class_System_Json.htm#apex_System_Json_serialize)
- [Testing HTTP Callouts](https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/apex_classes_restful_http_testing.htm)
- [HttpCalloutMock Interface Docs](https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/apex_interface_httpcalloutmock.htm)
- [Mocking API Responses in Unit Tests](https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/apex_classes_restful_http_testing_httpcalloutmock.htm)

---

## 🙏 Special Thanks
Huge thanks to the live attendees for the amazing engagement, and to **Waleed El Hor** for recommending the public API used in our demo!

---

## 📌 Related Playlists
- [🔗 Apex Invocation Types](https://www.youtube.com/playlist?list=PLeevJTFuNoISrKZ0_Ddk1bTWh2D8VmWlP)
- [🔗 Learn Salesforce Apex with Sally – Beginner Series](https://www.youtube.com/playlist?list=PLeevJTFuNoITnI2Tol-iY4dYSh2JVPd3J)
 [🔗 Learn Salesforce Apex with Sally – Intermediate Series](https://www.youtube.com/playlist?list=PLeevJTFuNoITwTpPlXqeGWlShf41do1wt)

---

## 💬 Questions?

Got a question you'd like to see covered in a session?  
📩 Comment on YouTube  
💬 Reach out on Slack or LinkedIn  
🌐 Explore more at [codewithsally.com](https://codewithsally.com)

---

**Created for the Code With Sally YouTube Series**