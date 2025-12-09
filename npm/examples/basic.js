/**
 * Basic Example - JSON to CSV Converter API
 *
 * This example demonstrates how to use the JSON to CSV Converter API.
 * Make sure to set your API key in the .env file or replace '[YOUR_API_KEY]' below.
 */

require('dotenv').config();
const jsontocsvAPI = require('../index.js');

// Initialize the API client
const api = new jsontocsvAPI({
    api_key: process.env.API_KEY || '[YOUR_API_KEY]'
});

// Example query
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

// Make the API request using callback
console.log('Making request to JSON to CSV Converter API...\n');

api.execute(query, function (error, data) {
    if (error) {
        console.error('Error occurred:');
        if (error.error) {
            console.error('Message:', error.error);
            console.error('Status:', error.status);
        } else {
            console.error(JSON.stringify(error, null, 2));
        }
        return;
    }

    console.log('Response:');
    console.log(JSON.stringify(data, null, 2));
});
