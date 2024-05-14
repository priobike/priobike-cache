# priobike-cache
A microservice providing simple caching functionality for priobike services

# Test setup

### Test command for shlink

Post Request save short link \n
`curl -X POST --header "X-Api-Key: 8a1e47f1-36ac-44e8-b648-aae112f97208" -H "Content-Type: application/json" -d @example_long_link.json  http://localhost/rest/v3/short-urls`

Get Request get long link \n
`curl --header "X-Api-Key: 8a1e47f1-36ac-44e8-b648-aae112f97208" -H "Content-Type: application/json" http://localhost/rest/v3/short-urls/SHORTLINKCODE`