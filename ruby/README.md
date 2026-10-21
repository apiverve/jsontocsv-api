# JSON to CSV Converter API - Ruby Gem

JSON to CSV Converter converts an array of JSON objects into structured CSV text. It outputs formatted CSV content, detected column headers, and row counts, with support for custom delimiters like commas, tabs, or pipes.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_jsontocsv'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_jsontocsv
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_jsontocsv'

# Initialize the client
client = APIVerve::Jsontocsv::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({
  json: [object Object],[object Object],
  delimiter: ",",
  include_header: true
})

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ json: [object Object],[object Object], delimiter: ",", include_header: true })
  puts response["data"]
rescue APIVerve::Jsontocsv::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Jsontocsv::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Jsontocsv::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
```

## Example Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "row_count": 2,
    "column_count": 3,
    "columns": [
      "name",
      "age",
      "city"
    ],
    "csv": "name,age,city\nJohn Doe,30,New York\nJane Smith,25,Los Angeles"
  }
}
```

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/jsontocsv?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/jsontocsv?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/jsontocsv?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
