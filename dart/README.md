# JSON to CSV Converter API - Dart/Flutter Client

JSON to CSV Converter converts an array of JSON objects into structured CSV text. It outputs formatted CSV content, detected column headers, and row counts, with support for custom delimiters like commas, tabs, or pipes.

[![pub package](https://img.shields.io/pub/v/apiverve_jsontocsv.svg)](https://pub.dev/packages/apiverve_jsontocsv)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [JSON to CSV Converter API](https://apiverve.com/marketplace/jsontocsv?utm_source=dart&utm_medium=referral&utm_content=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_jsontocsv: ^1.2.5
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_jsontocsv/apiverve_jsontocsv.dart';

void main() async {
  final client = JsontocsvClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'json': [object Object],[object Object],
      'delimiter': ',',
      'include_header': true
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

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

## API Reference

- **API Home:** [JSON to CSV Converter API](https://apiverve.com/marketplace/jsontocsv?utm_source=dart&utm_medium=referral&utm_content=readme)
- **Documentation:** [docs.apiverve.com/ref/jsontocsv](https://docs.apiverve.com/ref/jsontocsv?utm_source=dart&utm_medium=referral&utm_content=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme)
