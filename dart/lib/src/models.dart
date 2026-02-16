/// Response models for the JSON to CSV Converter API.

/// API Response wrapper.
class JsontocsvResponse {
  final String status;
  final dynamic error;
  final JsontocsvData? data;

  JsontocsvResponse({
    required this.status,
    this.error,
    this.data,
  });

  factory JsontocsvResponse.fromJson(Map<String, dynamic> json) => JsontocsvResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? JsontocsvData.fromJson(json['data']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
  };
}

/// Response data for the JSON to CSV Converter API.

class JsontocsvData {
  int? rowCount;
  int? columnCount;
  List<String>? columns;
  String? csv;

  JsontocsvData({
    this.rowCount,
    this.columnCount,
    this.columns,
    this.csv,
  });

  factory JsontocsvData.fromJson(Map<String, dynamic> json) => JsontocsvData(
      rowCount: json['row_count'],
      columnCount: json['column_count'],
      columns: (json['columns'] as List?)?.cast<String>(),
      csv: json['csv'],
    );
}

class JsontocsvRequest {
  List<Map<String, dynamic>> json;
  String? delimiter;
  bool? includeHeader;

  JsontocsvRequest({
    required this.json,
    this.delimiter,
    this.includeHeader,
  });

  Map<String, dynamic> toJson() => {
      'json': json,
      if (delimiter != null) 'delimiter': delimiter,
      if (includeHeader != null) 'include_header': includeHeader,
    };
}
