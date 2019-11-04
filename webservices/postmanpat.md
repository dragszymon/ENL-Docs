# Postman Pat

### Check status

Visit [this url](https://postmanpat.enlighten-webservices.ovh) (`https://postmanpat.enlighten-webservices.ovh`) in your browswer or send `GET` request from a client.

### Usage

Currently **Postman Pat** web service provides only **REST API** access to be consumed by developers based on their own implementation. Front end JavaScript library hosted on Enlighten CDN is planned to be developed.

### REST API

In order to send an email with this web service you should perform a `POST` request to main endpoint (`/`). However, due to **SendGrid** free plan limitation (**100 emails daily**) it is advised to **test** your integration with a testing endpoint (`/test`) which has exactly the same parsing and validation rules without actually invoking the `send()` method thus **saving the quota**.

#### Endpoints

**`/`**

Method | HTTP Status | Description
--- | --- | ---
`GET` | 200 | Returns web service status
`POST` | 200 | Handles email sending

**`/test`**

Method | HTTP Status | Description
--- | --- | ---
`POST` | 200 | Lets you test your integration without actually sending an email

#### Minimal required data

To send an email with minimal configuration you should send this object as a request:

```javascript
{
	template: "manual",
	to: "martin.smilowski@enlighten.pl",
	subject: "Test email",
	html: "Hi, <br>this is a test mail!",
}
```

Althoung above example is a minimal set of values, it is **highly recommended** to provide `fromName` string which will be shown in recipient's inbox as sender's name.

All emails are currently being sent from a `noreply@postmanpat.enlighten-webservices.ovh` address.

#### Parameters

Name | Required | Description
--- | --- | ---
`template` | **True** | Parameter will be used for future templating engine. Currently the only accepted value is `manual` and is required for future compatibility.
`to` | **True** | An email address
`subject` | **True** | Email subject
`html` | **True** | Email message formated in HTML
`fromName` | | Friendly name of the sender which will be shown in recipient's inbox