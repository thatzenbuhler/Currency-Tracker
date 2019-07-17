# Currency Tracker: Flutter Edition

A multiplatform mobile app designed to make it easy for me to compare up to date currency exchange rates on a coming trip to several European countries.

## Design

This app is written using [Flutter](https://flutter.dev/), a new
multiplatform framework from Google for building applications. The program is created entirely using the Dart programming language. Because the purpose of the app is to provide accurate, up-to-date exchange rates, it uses the Open Source API [ExchangeRatesApi.io](https://exchangeratesapi.io/) to get data via JSON. Since the http request requires active internet, the rates from July-16 are hard coded in case of no connection. Caching previous successful connections could be a possible feature eventually.

Because the API call returns a much larger list of exchange rates, it is easy to tweak which currencies are used from a development standpoint. Perhaps I could add greater choice functionality for many more use cases.

## Function

The app works by providing a homepage to the user where they are given four buttons where they choose the "active" currency that others will be compared against. When selected, a new page is created where the user enters a number. The rest of the currencies on the page automatically update with a change in input.

## Screenshots

![Home Page](https://github.com/thatzenbuhler/Currency-Tracker-Flutter/blob/master/homepage.png)

![Conversions Page](https://github.com/thatzenbuhler/Currency-Tracker-Flutter/blob/master/conversions.png)

## Personal

Working on this project is a big deal to me since it is my first deep dive into a new development framework with the goal of creating a real, meaningful app from start to finish. Taking the time to engineer the app while learning a new programming language and framework has been a tough but rewarding challenge.
