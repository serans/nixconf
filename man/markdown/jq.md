JSON to csv
============

```
   JQ_QUERY="
   .search_results[] | {
        id:             .listing.id,
        name:           .listing.name,
        bathrooms:      .listing.bathrooms,
        bedrooms:       .listing.bedrooms,
        beds:           .listing.beds,
        rating:         .listing.star_rating,
        reviews:        .listing.reviews_count,
        room_type:      .listing.room_type,
        price:          .pricing_quote.rate.amount
   }"

   cat ../../../data/airbnb/chamonix_listing.json | jq  "$JQ_QUERY" | jq -s '.' | in2csv -f json
```


