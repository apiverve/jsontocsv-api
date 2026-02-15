using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.JSONtoCSVConverter
{
    /// <summary>
    /// Query options for the JSON to CSV Converter API
    /// </summary>
    public class JSONtoCSVConverterQueryOptions
    {
        /// <summary>
        /// The JSON array to convert to CSV (must be array of objects)
        /// </summary>
        [JsonProperty("json")]
        public string Json { get; set; }

        /// <summary>
        /// The delimiter to use in the CSV
        /// </summary>
        [JsonProperty("delimiter")]
        public string Delimiter { get; set; }

        /// <summary>
        /// Whether to include column headers in the output (default: true)
        /// </summary>
        [JsonProperty("include_header")]
        public string Include_header { get; set; }
    }
}
