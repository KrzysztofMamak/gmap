import 'package:gmap/models/geometry.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Place {
  final String name;
  final double rating;
  final int userRatingCount;
  final String vicinity;
  final Geometry geometry;
  final BitmapDescriptor icon;

  Place({
    this.name,
    this.rating,
    this.userRatingCount,
    this.vicinity,
    this.geometry,
    this.icon,
  });

  Place.fromJson(Map<dynamic, dynamic> json, BitmapDescriptor icon)
      : name = json['name'],
        rating = (json['rating'] != null) ? json['rating'].toDouble() : null,
        userRatingCount = (json['user_ratings_total'] != null)
            ? json['user_ratings_total']
            : null,
        vicinity = json['vicinity'],
        geometry = Geometry.fromJson(json['geometry']),
        icon = icon;
}
