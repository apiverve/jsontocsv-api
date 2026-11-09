/// Response models for the JSON to CSV Converter API.

/// API Response wrapper.
class JsontocsvResponse {
  final String status;
  final dynamic error;
  final JsontocsvData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  JsontocsvResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory JsontocsvResponse.fromJson(Map<String, dynamic> json) => JsontocsvResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? JsontocsvData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the JSON to CSV Converter API.

class JsontocsvData {
  num? rowCount;
  num? columnCount;
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
