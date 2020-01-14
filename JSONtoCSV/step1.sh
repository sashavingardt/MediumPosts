cat listings.json \
| jq -r '[.businesses[] | [paths(scalars) as $path | { ($path | join(".")): getpath($path) }] | add]' \
> listings_flat.json
