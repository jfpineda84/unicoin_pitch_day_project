# Pitch Day Final Project  - Week 10
## Description

Award winning final pitch day project **Unicoin** _“Financial aid so easy, it's like magic”_.

This is a financial aid web prototype application, which allows the student for an easy and simple way to apply to financial aid without the hassle of the bulky questionnaire found in the FAFSA PDF application and a need for prior knowledge of incometax literacy.

---

This application attempts to solve these four specific issues:

* Replace the actual FAFSA PDF for a digital version (Simplified smart form)
* Customer service response via a chat capabilities (Live chat support)
* Upload tax return to populate user information (Tax return uploader and reader)
* PDF FAFSA data pre-filler (FAFSA Generator)

---

This web application framework has been build using: Ruby on Rails, HTML, CSS and Bootstrap. 

* The **Simplified smart form** was built using: JavaScript, jQuery and AJAX.
* The **Live chat support** was built using: Twilio jQuery and AJAX.
* The **Tax return uploader and reader** was built using: PaperClip, AmazonWebServices and Google Cloud Vision API.
* The **FAFSA Generator** was built using: PDFtk (pdf-forms gem)

## Synopsis

> This project was created with the contribution of _(for details on GitHub contact info, see below @ **For more info** )_:
> 
> * **Cece Claridge**
> * **Javier Gonzalez**
> * **Juan Fernando Pineda**
> 
> Along the synopsis I will ID the Division of Responsibility (**DOR**) between the group.

### Part 1 - Setup & Understanding

The first step to this project, was to research and understand how the FAFSA application and questionnaire. Logic maps were developed as well as question logic understanding and form flow.

> **DOR: _Juan Fernando Pineda & Cece Claridge_**

This is an example of the logic map development. 

![logic01](https://user-images.githubusercontent.com/28307526/29197985-158faffe-7e0e-11e7-88de-4c9e1e763299.png)

This is an example of the question logic development in relation to the apps model Entity Relationship Diagram (ERD)

![seed file](https://user-images.githubusercontent.com/28307526/29197984-158e3b38-7e0e-11e7-90c1-a50a8d2a7442.png)

---

### Part 2 - Development

> **DOR: _Cece Claridge & Javier Gonzalez_**

Entity Relationship Diagrams were created to develop the Rails infrastructure and model creation and model dependencies. This allowed the creation of user login and user registration. 

 ![screen shot 2017-07-31 at 10 15 51 am 1](https://user-images.githubusercontent.com/28307526/29197854-165e7af6-7e0d-11e7-915c-a0a06c3b7f17.png)

![regist](https://user-images.githubusercontent.com/28307526/29198251-2f7bbe38-7e10-11e7-8b3a-0a60410da94d.png)

---

### Part 3 - Internals: _Simplified Smart Form & FAFSA Generator | In-chat application | Tax-Return Loader & Reader_


* The **Simplified Smart Form** allowed the user a simplified question sequence with the objective to provide a cleaner and lean user experience. Further, reduce the hazzel for complex questions. 
> **DOR: _Cece Claridge_

![index01](https://user-images.githubusercontent.com/28307526/29199272-7508dc7a-7e19-11e7-8873-352904e37ebb.png)
![index02-question](https://user-images.githubusercontent.com/28307526/29199282-8b28acb0-7e19-11e7-9705-186115878353.png)

---

* The **In-Chat Application** was developed with the user in mind, to allow them to ask questions during the evolution of the questionnaire.
> **DOR: _Javier Gonzalez_

![question01](https://user-images.githubusercontent.com/28307526/29199300-aff86c6a-7e19-11e7-90c8-4a2de8802e18.png)
![index04-question](https://user-images.githubusercontent.com/28307526/29199304-b2a96798-7e19-11e7-9a35-1e17eedefefc.png)
 
---

* The **Tax-Return Loader & Reader** allowed the user to upload a picture of their tax return, and once uploaded, the image was processed, broken apart thus providing <string> results to be parsed out using regular expressions filtering.
> **DOR: _Juan Fernando Pineda_

![upload01](https://user-images.githubusercontent.com/28307526/29199325-d5c3e564-7e19-11e7-83ef-aae679e24ddc.png)
![upload02](https://user-images.githubusercontent.com/28307526/29199327-d5c5b362-7e19-11e7-9a5e-2228524798b0.png)
![upload03](https://user-images.githubusercontent.com/28307526/29199326-d5c52dac-7e19-11e7-9478-ff731570c87e.png)

The images below, shows how the uploaded image is parsed with the app code. The image is uploaded to the Amazon Web Services server, the passed to the Google Vision API. The result is the parsed, used and saved to the user database, all happening in the background (the red lines are meant to show the actual processing code with the server)


![code01](https://user-images.githubusercontent.com/28307526/29199688-ebda4598-7e1c-11e7-8017-b91da6b2a144.png)
![code02](https://user-images.githubusercontent.com/28307526/29199689-ebdc34e8-7e1c-11e7-9bb5-f32700455891.png)

---

* The **FAFSA Generator** was created to return the final product, a pre-filled FAFSA PDF form.
> **DOR: _Cece Claridge_

![pre-filled01](https://user-images.githubusercontent.com/28307526/29199622-5ede5f4e-7e1c-11e7-8eea-dfa294268f31.png)
![pre-filled02](https://user-images.githubusercontent.com/28307526/29199623-5ede91ee-7e1c-11e7-8fa3-109f9d60960c.png)

---

## Highlights for part of the project under Juan Fernando Pineda

**Learned about:**

* Project Ideation (User of [Trello project management](https://trello.com/b/y3eqbajI/final-project-unicoin))
* Logic maps and file seeding
* Paperclip manipulation
* API manipulation and iteration (iterated over dummy files to test API code, starting with a single ruby file and terminal command, to running the code using the Sinatra Server, to running the code in a rails dummy file, to finally testing the final code in the final application)
* Use of Google Cloud docs as well as Amazon Web services doc
* Interaction of appending code to an actual running data
* De-bugging
* DataBase manipulation
* Dev Group interaction
* Asking for help
* Researching aid materials online (videos tutorials, written tutorials, HTML and CSS basic properties, ERD development)

## Resources for part of the project under Juan Fernando Pineda

* [Wyncode resources](https://wyncode.co/coding-bootcamp-2/)
* Wyncode TA’s & colleagues
* [Google Vision API](https://cloud.google.com/vision/)
* [Amazon Web Services S3](https://aws.amazon.com/)

## For more info 

* **Cece Claridge** - GitHub _**cececlar**_ Back-end / Front - end
* **Javier Gonzalez** - GitHub _**javiergonzalez54**_ Back-end / Front - end
* **Juan Fernando** - GitHub _**jfpineda84**_ Back-end / Front - end
