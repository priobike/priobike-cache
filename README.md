# priobike-cache
A microservice providing simple caching functionality. It is configurable and thus usable for different services.

The only dependency is a service for which the caching should be implemented. 

In PrioBike we use it in front of the shlink service to cache the shortlink responses.

[Learn more about PrioBike](https://github.com/priobike)

## Quickstart

This repo contains a minimal test setup consisting of a traefik, a shlink service and replicated priobike cache services. To test the setup run:
```bash
docker-compose up
```

It is configurable through environment variables. The following variables are available:
- `HOST_URL`: The host url of the service to cache
- `SUCCESS_STORE_TIME`: The time in minutes to store a successful response (e.g. "1m" -> 1 minute)
- `NOT_FOUND_STORE_TIME`: The time in minutes to store a not found response (e.g. "1m" -> 1 minute)

When it is running, create a shortlink with:
```bash
curl -X POST --header "X-Api-Key: APIKEY" -H "Content-Type: application/json" -d @example_long_link.json  http://localhost/link/rest/v3/short-urls
```

And request the shortlink mutliple times with:
```bash
curl --header "X-Api-Key: APIKEY" -H "Content-Type: application/json" http://localhost/link/rest/v3/short-urls/SHORTLINKCODE
```

After the first 3 requests the caching service sends the response. After the TTL minute the cache resets.

## API

This service mirrors the API of the service it caches.

## Contributing

We highly encourage you to open an issue or a pull request. You can also use our repository freely with the `MIT` license. 

Every service runs through testing before it is deployed in our release setup. Read more in our [PrioBike deployment readme](https://github.com/priobike/.github/blob/main/wiki/deployment.md) to understand how specific branches/tags are deployed.

## Anything unclear?

Help us improve this documentation. If you have any problems or unclarities, feel free to open an issue.