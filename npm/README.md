# JSON to CSV Converter API

JSON to CSV Converter is a powerful tool for converting JSON arrays into CSV format. It supports custom delimiters, header inclusion, and proper escaping of special characters.

![Build Status](https://img.shields.io/badge/build-passing-green)
![Code Climate](https://img.shields.io/badge/maintainability-B-purple)
![Prod Ready](https://img.shields.io/badge/production-ready-blue)
[![npm version](https://img.shields.io/npm/v/@apiverve/jsontocsv.svg)](https://www.npmjs.com/package/@apiverve/jsontocsv)

This is a Javascript Wrapper for the [JSON to CSV Converter API](https://apiverve.com/marketplace/jsontocsv?utm_source=npm&utm_medium=readme)

---

## Installation

Using npm:
```shell
npm install @apiverve/jsontocsv
```

Using yarn:
```shell
yarn add @apiverve/jsontocsv
```

---

## Configuration

Before using the JSON to CSV Converter API client, you have to setup your account and obtain your API Key.
You can get it by signing up at [https://apiverve.com](https://apiverve.com?utm_source=npm&utm_medium=readme)

---

## Quick Start

[Get started with the Quick Start Guide](https://docs.apiverve.com/quickstart?utm_source=npm&utm_medium=readme)

The JSON to CSV Converter API documentation is found here: [https://docs.apiverve.com/ref/jsontocsv](https://docs.apiverve.com/ref/jsontocsv?utm_source=npm&utm_medium=readme).
You can find parameters, example responses, and status codes documented here.

### Setup

```javascript
const jsontocsvAPI = require('@apiverve/jsontocsv');
const api = new jsontocsvAPI({
    api_key: '[YOUR_API_KEY]'
});
```

---

## Usage

---

### Perform Request

Using the API is simple. All you have to do is make a request. The API will return a response with the data you requested.

```javascript
var query = {
  "json": [
    {
      "name": "John Doe",
      "age": 30,
      "city": "New York"
    },
    {
      "name": "Jane Smith",
      "age": 25,
      "city": "Los Angeles"
    }
  ],
  "delimiter": ",",
  "include_header": true
};

api.execute(query, function (error, data) {
    if (error) {
        return console.error(error);
    } else {
        console.log(data);
    }
});
```

---

### Using Promises

You can also use promises to make requests. The API returns a promise that you can use to handle the response.

```javascript
var query = {
  "json": [
    {
      "name": "John Doe",
      "age": 30,
      "city": "New York"
    },
    {
      "name": "Jane Smith",
      "age": 25,
      "city": "Los Angeles"
    }
  ],
  "delimiter": ",",
  "include_header": true
};

api.execute(query)
    .then(data => {
        console.log(data);
    })
    .catch(error => {
        console.error(error);
    });
```

---

### Using Async/Await

You can also use async/await to make requests. The API returns a promise that you can use to handle the response.

```javascript
async function makeRequest() {
    var query = {
  "json": [
    {
      "name": "John Doe",
      "age": 30,
      "city": "New York"
    },
    {
      "name": "Jane Smith",
      "age": 25,
      "city": "Los Angeles"
    }
  ],
  "delimiter": ",",
  "include_header": true
};

    try {
        const data = await api.execute(query);
        console.log(data);
    } catch (error) {
        console.error(error);
    }
}
```

---

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

---

## Customer Support

Need any assistance? [Get in touch with Customer Support](https://apiverve.com/contact?utm_source=npm&utm_medium=readme).

---

## Updates

Stay up to date by following [@apiverveHQ](https://twitter.com/apiverveHQ) on Twitter.

---

## Legal

All usage of the APIVerve website, API, and services is subject to the [APIVerve Terms of Service](https://apiverve.com/terms?utm_source=npm&utm_medium=readme), [Privacy Policy](https://apiverve.com/privacy?utm_source=npm&utm_medium=readme), and [Refund Policy](https://apiverve.com/refund?utm_source=npm&utm_medium=readme).

---

## License
Licensed under the The MIT License (MIT)

Copyright (&copy;) 2026 APIVerve, and EvlarSoft LLC

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
