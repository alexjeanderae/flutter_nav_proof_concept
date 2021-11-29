# proof_concept_nav

A new Flutter project. Trying to call google maps for using turn by turn navigation inside an existing app. Toying with the concept. 

Starting experimentation from this video among others:
https://www.youtube.com/watch?v=BMbGE7LRwvc


## Lessons learnt
### 1 using URL launcher package
This is an official package from flutter and is also labelled "flutter favorite" by the Flutter team. Has 3.5k likes. 

"A Flutter plugin for launching a URL. Supports iOS, Android, web, Windows, macOS, and Linux."

Has some notes regarding permissions for iOS and Android as well as a list of "supported URL schemes". This includes default browser opening, creating an email, making a phone call, sending an SMS. Can do mainly http and https protocols.

URL have to be "properly encoded", Uri class seems the preferred way to go.

There is also a warning: 
"By default, Android opens up a browser when handling URLs. You can pass forceWebView: true parameter to tell the plugin to open a WebView instead. If you do this for a URL of a page containing JavaScript, make sure to pass in enableJavaScript: true, or else the launch method will not work properly. On iOS, the default behavior is to open all web URLs within the app. Everything else is redirected to the app handler.
"

There are 46 open issues at the time of writing with this package. Seems to have some issues with Android 11 and web.

### 2 Opening in the browser Google Map with parameters
URL launcher does the main part - see above point 1. But it needs to be parametrized. This works basically as a query. 

The documentation of how to query Google maps is here. 
https://developers.google.com/maps/documentation/urls/get-started

api=1 is mandatory. "The parameter api=1 identifies the version of Maps URLs this URL is intended for. This parameter is required in every request. The only valid value is 1."

I already encountered this querying when working on websites earliers. It does not require any API key of google. So it is essentially free (TBC?). API keys is discussed here, just for reference https://developers.google.com/maps/documentation/embed/get-api-key