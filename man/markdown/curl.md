Options
=======

**-X** specify method (GET/POST/etc.)

**-G** put all "-d" parameters in get request instead of POST body (as would be default)

**-d** sends specified data in POST request


Examples
========

Reading from json API
---------------------

```
curl -X GET -G \
    -d "client_id=3092nxybyb0otqw18e8nh5nty" \
    -d "guests=1" \
    --data-urlencode "location=FERNEY-VOLTAIRE" \
    https://api.airbnb.com/v2/search_results
```

(see "jq" on how to extract JSON into CSV)
