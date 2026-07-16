# JSON to CSV Converter API - PHP Package

JSON to CSV Converter is a powerful tool for converting JSON arrays into CSV format. It supports custom delimiters, header inclusion, and proper escaping of special characters.

## Installation

Install via Composer:

```bash
composer require apiverve/jsontocsv
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Jsontocsv\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute([
    'json' => [object Object],[object Object],
    'delimiter' => ',',
    'include_header' => true
]);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Jsontocsv\Client;
use APIVerve\Jsontocsv\Exceptions\APIException;
use APIVerve\Jsontocsv\Exceptions\ValidationException;

try {
    $response = $client->execute(['json' => [object Object],[object Object], 'delimiter' => ',', 'include_header' => true]);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
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

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/jsontocsv?utm_source=packagist&utm_medium=readme).

## Support

- Website: [https://apiverve.com/marketplace/jsontocsv?utm_source=php&utm_medium=readme](https://apiverve.com/marketplace/jsontocsv?utm_source=php&utm_medium=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
