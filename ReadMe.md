# CarAPI NodeJS Example Proxy

[![Build](https://github.com/car-api-team/nodejs-proxy-example/actions/workflows/build.yml/badge.svg)](https://github.com/car-api-team/nodejs-proxy-example/actions/workflows/build.yml)

This is an example proxy for CarAPI built in NodeJS/Express. The application is a simple proxy and is suitable for local development. You can use this as a basis for what you'd deploy to production or write your own. A proxy is ideal for client-side developers who need to interact with CarAPIs CORs restricted API.

Why use a proxy for your client-side application? To prevent [impersonation through JWT theft](https://developer.okta.com/blog/2018/06/20/what-happens-if-your-jwt-is-stolen).

## Requirements

- Docker and Docker Compose

## Configuration

Put your API Token and API Secret in an environment config file at `app/.env` and if neccessary your CORS_ORIGIN. A sample file is provied at `app/.env.example`:

```env
API_TOKEN=""
API_SECRET=""
CORS_ORIGIN="http://localhost"
```

## Installation

```shell
docker-compose up
```

## Usage

The server will simply forward any requests made to `http://localhost:3000/proxy` to `https://carapi.app`. For example, to make a request to the `/api/years` endpoint you'd make a request to `http://localhost:3000/proxy/api/years`. Anything the [API documentation](https://carapi.app/api) supports is supported by the proxy including query parameters such as `http://localhost:3000/proxy/api/years?make=tesla`.

## Deployment

There are a number of ways to deploy your application: AWS, Heroku, Railway and more. While CarAPI doesn't support your infrastructure, we found [Railway](https://railway.app?referralCode=Rk-pDA) to be an easy option for someone less familiar with cloud or VPS providers to easily deploy a NodeJS application. 

1. Create an account with Railway.
2. Connect your Railway to your Github account through the Railway setup wizard.
3. Add your secrets to railway as Railway Variables.
4. Deploy your application.
5. Setup Public Networking in your applications Settings.

Railway will automate deployments as you push to your main branch.