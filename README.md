# Experimental spelling web-service

Set up and run the server:

```bash
docker-compose build
docker-compose up app
```

Run tests:

```bash
docker-compose run console bash
bundle exec rspec
```

Request example:

```bash
curl -s -X POST "http://localhost:3000/suggestions" -H 'Content-Type: application/json' -d '{"text": "helo wrld"}' | python -m json.tool
```

Response:

```json
{
  "suggestions":
  [
    {
      "word": "helo",
      "offset": 0,
      "suggestions":
      [
        "hole",
        "help",
        "helot",
        "hello",
        "halo",
        "hero",
        "hell",
        "held",
        "helm",
        "he lo",
        "he-lo"
      ]
    },
    {
      "word": "wrld",
      "offset": 5,
      "suggestions":
      [
        "weld",
        "world",
        "wild",
        "wold"
      ]
    }
  ]
}
```
