# Exercism CLI website

A simple website to document the CLI usage.

## Setup & Running

The webapp is set up with a Procfile. It simply requires `foreman` or `forego` to get started

1. `gem install foreman`
1. `bundle install`
1. `foreman start`

## Docker env

To run the webapp inside Docker container

```shell
docker run --name=exercism -it -v $PWD:/code -w /code -p 5000:5000 ruby:2.1-alpine sh
apk add --update alpine-sdk
gem install foreman
bundle install
foreman start
```
