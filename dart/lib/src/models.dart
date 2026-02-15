/// Response models for the Airport Distance API.

/// API Response wrapper.
class AirportdistanceResponse {
  final String status;
  final dynamic error;
  final AirportdistanceData? data;

  AirportdistanceResponse({
    required this.status,
    this.error,
    this.data,
  });

  factory AirportdistanceResponse.fromJson(Map<String, dynamic> json) => AirportdistanceResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? AirportdistanceData.fromJson(json['data']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
  };
}

/// Response data for the Airport Distance API.

class AirportdistanceData {
  double? distanceMiles;
  double? distanceKm;
  AirportdistanceDataAirport1? airport1;
  AirportdistanceDataAirport2? airport2;

  AirportdistanceData({
    this.distanceMiles,
    this.distanceKm,
    this.airport1,
    this.airport2,
  });

  factory AirportdistanceData.fromJson(Map<String, dynamic> json) => AirportdistanceData(
      distanceMiles: json['distanceMiles'],
      distanceKm: json['distanceKm'],
      airport1: json['airport1'] != null ? AirportdistanceDataAirport1.fromJson(json['airport1']) : null,
      airport2: json['airport2'] != null ? AirportdistanceDataAirport2.fromJson(json['airport2']) : null,
    );
}

class AirportdistanceDataAirport1 {
  String? name;
  String? iata;
  String? icao;
  String? city;
  String? state;
  String? country;
  int? elevation;
  double? latitude;
  double? longitude;

  AirportdistanceDataAirport1({
    this.name,
    this.iata,
    this.icao,
    this.city,
    this.state,
    this.country,
    this.elevation,
    this.latitude,
    this.longitude,
  });

  factory AirportdistanceDataAirport1.fromJson(Map<String, dynamic> json) => AirportdistanceDataAirport1(
      name: json['name'],
      iata: json['iata'],
      icao: json['icao'],
      city: json['city'],
      state: json['state'],
      country: json['country'],
      elevation: json['elevation'],
      latitude: json['latitude'],
      longitude: json['longitude'],
    );
}

class AirportdistanceDataAirport2 {
  String? name;
  String? iata;
  String? icao;
  String? city;
  String? state;
  String? country;
  int? elevation;
  double? latitude;
  double? longitude;

  AirportdistanceDataAirport2({
    this.name,
    this.iata,
    this.icao,
    this.city,
    this.state,
    this.country,
    this.elevation,
    this.latitude,
    this.longitude,
  });

  factory AirportdistanceDataAirport2.fromJson(Map<String, dynamic> json) => AirportdistanceDataAirport2(
      name: json['name'],
      iata: json['iata'],
      icao: json['icao'],
      city: json['city'],
      state: json['state'],
      country: json['country'],
      elevation: json['elevation'],
      latitude: json['latitude'],
      longitude: json['longitude'],
    );
}

class AirportdistanceRequest {
  String iata1;
  String iata2;

  AirportdistanceRequest({
    required this.iata1,
    required this.iata2,
  });

  Map<String, dynamic> toJson() => {
      'iata1': iata1,
      'iata2': iata2,
    };
}
