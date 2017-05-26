## UTM Codes

Simple JS library that appends utm codes received via GET params to existing forms

#### Requirements

* JQuery [Download link](http://jquery.com/download/)

#### Build

* npm run compress
* upload the last `dist/utm_codes.min.js` file to your favorite CDN provider.

#### Installation

*Problem:* send utm codes in a existent form on my website.

* add the *utm-tracker-required* class to all the forms that you want to update with the utm code hidden fields.
* add the *utm_codes.min.js* to your website.
* if you want to wrap the params inside an object, example contact, you have to add `<form class='utm-tracker-requried' data-utm-tracker-param-name='contact'>`
