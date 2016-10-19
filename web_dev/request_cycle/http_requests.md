# Research for http_requests

###1.What are some common HTTP status codes?
 
* 10.1 Informational 1xx

>This class of status code indicates a provisional response, consisting of only the status-line and optional headers and is terminated by an empty line.

* 10.2 Successful 2xx

> Status code that indicates that the client's status code was successfully recieved, understood and accepted.

* 10.2.1 200 OK

>The request has succeeded. The information returned with the response is dependant on the method used in the request.

###2.What is the difference between a GET request and a POST request? When might each be used?

* A GET method requests data from a specified resource.

>It would be good for bookmarking things or cacheing things where POST cannot do this.

* A POST method submitts data to be specified to a specified resource.

>This method packages the name/value pairs inside the body of the HTTP request, which makes for a cleaner URL and imposes no size limitations on the forms output. It is also more secure.

###3.Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?

* A cookie is a small text file that is stored on a users machine.
A web page or server instructs a browser to store this information and sends it back with each request based on a set of rules.
Web servers can use cookies to identify individual users.