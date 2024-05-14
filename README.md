# priobike-cache
A microservice providing simple caching functionality for priobike services

# Test setup
This repo contains a minimal test setup containing of traefik, shlink and replicated caches.
### Test command for shlink
To test the setup run: \
`docker-compose up`

And create a shortlink with: \
`curl -X POST --header "X-Api-Key: 8a1e47f1-36ac-44e8-b648-aae112f97208" -H "Content-Type: application/json" -d @example_long_link.json  http://localhost/rest/v3/short-urls`

And request the shortlink mutliple times with: \
`curl --header "X-Api-Key: 8a1e47f1-36ac-44e8-b648-aae112f97208" -H "Content-Type: application/json" http://localhost/rest/v3/short-urls/SHORTLINKCODE`

In the console you can see that the shlink gets requestet the first 3 times and then the cache can send the response directly. After 1 minute the cache should reset.
