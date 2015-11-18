# Überauth Example

> Using Überauth for authentication in Phoenix.

This project demonstrates how to use Überauth and multiple strategies to provide authentication for a Phoenix application.  The project has been setup to run on Heroku can can be found at [ueberauth-example.herokuapp.com]().

In this example we'll use three strategies:

+ Facebook ([ueberauth_facebook](https://github.com/ueberauth/ueberauth_facebook))
+ GitHub ([ueberauth_github](https://github.com/ueberauth/ueberauth_github))
+ Google ([ueberauth_google](https://github.com/ueberauth/ueberauth_google))

## Setup

1. Retrieve app ids and secrets and set environment variables:

	+ Facebook ([https://developers.facebook.com]())
		+ FACEBOOK_APP_ID
		+ FACEBOOK_APP_SECRET
	+ GitHub ([https://developer.github.com]())
		+ GITHUB_CLIENT_ID
		+ GITHUB_CLIENT_SECRET
  + Google ([https://console.developers.google.com/home]())
    + GOOGLE_CLIENT_ID
    + GOOGLE_CLIENT_SECRET

1. Clone the project:

	```shell
	$ git clone git@github.com:ueberauth/ueberauth_example.git
	$ cd ueberauth_example
	```

1. Fetch dependecies:

	```shell
	$ mix deps.get
	```

1. Run server:

	```shell
	$ mix phoenix.server
	```

1. Authenticate at [http://localhost:4000]()!

## Configuration

See [Überauth](https://github.com/ueberauth/ueberauth) for detailed instructions.

## Contributing

Contributions are welcomed and encouraged. Please make appropriate use of [Issues](https://github.com/ueberauth/ueberauth_example/issues) and [Pull Requests](https://github.com/ueberauth/ueberauth_example/pulls).

## License
The MIT License (MIT)

Copyright (c) 2015 Sean Callan

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
