# Überauth Example
[![Build Status][travis-img]][travis] [![License][license-img]][license]

[travis-img]: https://travis-ci.org/ueberauth/ueberauth_example.png?branch=master
[travis]: https://travis-ci.org/ueberauth/ueberauth_example
[license-img]: http://img.shields.io/badge/license-MIT-brightgreen.svg
[license]: http://opensource.org/licenses/MIT

> Using Überauth for authentication in Phoenix.

This project demonstrates how to use Überauth and multiple strategies to provide authentication for a Phoenix application.  The project has been setup to run on Heroku can can be found at [ueberauth-example.herokuapp.com](https://ueberauth-example.herokuapp.com).

In this example we'll use five strategies:

+ Facebook ([ueberauth_facebook](https://github.com/ueberauth/ueberauth_facebook))
+ GitHub ([ueberauth_github](https://github.com/ueberauth/ueberauth_github))
+ Google ([ueberauth_google](https://github.com/ueberauth/ueberauth_google))
+ Slack ([ueberauth_slack](https://github.com/ueberauth/ueberauth_slack))
+ Twitter ([ueberauth_twitter](https://github.com/ueberauth/ueberauth_twitter))
+ Identity ([ueberauth_identity](https://github.com/ueberauth/ueberauth_identity))

## Setup

1. Ensure the following prerequisites are met/installed:

  + Erlang 19
  + Elixir 1.3

1. Retrieve app ids and secrets and set environment variables:

	+ Facebook ([https://developers.facebook.com](https://developers.facebook.com))
		+ FACEBOOK_APP_ID
		+ FACEBOOK_APP_SECRET
	+ GitHub ([https://developer.github.com](https://developer.github.com))
		+ GITHUB_CLIENT_ID
		+ GITHUB_CLIENT_SECRET
  + Google ([https://console.developers.google.com/home](https://console.developers.google.com/home))
    + GOOGLE_CLIENT_ID
    + GOOGLE_CLIENT_SECRET
  + Slack ([https://api.slack.com/applications](https://api.slack.com/applications))
    + SLACK_CLIENT_ID
    + SLACK_CLIENT_SECRET
  + Twitter ([https://dev.twitter.com](https://dev.twitter.com))
    + TWITTER_CONSUMER_KEY
    + TWITTER_CONSUMER_SECRET

1. Clone the project:

	```shell
	$ git clone git@github.com:ueberauth/ueberauth_example.git
	$ cd ueberauth_example
	```

1. Fetch dependecies:

	```shell
	$ mix deps.get && npm install
	```

1. Run server:

	```shell
	$ mix phoenix.server
	```

1. Authenticate at [http://localhost:4000](http://localhost:4000)!

## Configuration

See [Überauth](https://github.com/ueberauth/ueberauth) for detailed instructions.

## License

Please see [LICENSE](https://github.com/ueberauth/ueberauth_example/blob/master/LICENSE) for licensing details.
