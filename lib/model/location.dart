class Location {
  String? country;
  String? countryCode;
  String? region;
  String? regionName;
  String? timezone;
  double? latitude;
  double? longitude;
  String? isp;
  String? currentIP;

  Location({
    this.country,
    this.countryCode,
    this.region,
    this.regionName,
    this.timezone,
    this.latitude,
    this.longitude,
    this.isp,
    this.currentIP,
  });

  factory Location.fromJson(Map<String, dynamic> json) {
    return Location(
      country: json['country'] as String,
      countryCode: json['countryCode'] as String,
      region: json['region'] as String,
      regionName: json['regionName'] as String,
      timezone: json['timezone'] as String,
      latitude: json['lat'] as double,
      longitude: json['lon'] as double,
      isp: json['isp'] as String,
      currentIP: json['query'] as String,
    );
  }
}
