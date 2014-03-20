# Ember Library

An ember port of [backbone-library](https://github.com/vernonk/backbone-library)

## To run the application

1. git clone git@github.com:AdamFerguson/ember-library.git
2. cd ember-library
3. npm install
4. bower install
5. grunt server

## Switch between local storage and REST API

The app is setup to use the browser's localStorage by default.
However, it can also be setup to use a backend REST API via ember-app-kit's proxying capabilities.

There is a corresponding Rails API found [here](https://github.com/AdamFerguson/ember-library-backend).
Once the backend is up and running, make sure that the URL for the backend happens to be matches the value
of `proxyURL` found in the `package.json` file.

Then, comment out the `DS.LSAdapter` found in `app/adapters/application.js` and uncomment the `DS.RESTAdapter`.
At that point, you should be good to go.

*Built using [Ember App Kit](https://github.com/stefanpenner/ember-app-kit)*
