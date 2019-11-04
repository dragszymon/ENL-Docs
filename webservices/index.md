# Enlighten Webservices

Enlighten is constantly evolving and following newest development trends. Due to this fact, we are currently investing our resources to build a wide variety of microservices which will automate tasks and decrease development time. Currently we have a few microservices up and running:

### Pergamon

**Pergamon** is a web service used to maintain this site. It's purpose is to spawn **docsify** process on `enlighten-webservices` server and pull the git repository on demand in order to update this content.

**url:** `http://pergamon.enlighten-webservices.ovh` <br />
**stage:** production <br />
**stability:** stable <br />


### Postman Pat

**Postman Pat** is an email sending web service helping developers integrate Enlighten's [SendGrid](https://sendgrid.com) account with their web projects to handle web forms, e-commerce orders, notifications and so on. Currently it is available only as REST API with limited templating functionality but new functions are over the horizon and will be added soon.

**url:** `https://postmanpat.enlighten-webservices.ovh` <br />
**stage:** development <br />
**stability:** testing <br />