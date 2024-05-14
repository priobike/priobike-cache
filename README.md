# Priobike-Cache-Service
A microservice providing simple caching functionality for priobike services

# Test setup
This repo contains a minimal test setup consisting of a traefik, a shlink service and replicated priobike cache services.
### Test command for shlink
To test the setup run: \
`docker-compose up`

And create a shortlink with: \
`curl -X POST --header "X-Api-Key: 8a1e47f1-36ac-44e8-b648-aae112f97208" -H "Content-Type: application/json" -d @example_long_link.json  http://localhost/rest/v3/short-urls`

And request the shortlink mutliple times with: \
`curl --header "X-Api-Key: 8a1e47f1-36ac-44e8-b648-aae112f97208" -H "Content-Type: application/json" http://localhost/rest/v3/short-urls/SHORTLINKCODE`

After the first 3 requests the caching service sends the response directly. After 1 minute the data in the cache resets.
