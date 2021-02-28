class Location {
  final double lat;
  final double lng;

  Location({
    this.lat,
    this.lng,
  });

  Location.fromJson(Map<dynamic, dynamic> json)
      : lat = json['lat'],
        lng = json['lng'];
}
