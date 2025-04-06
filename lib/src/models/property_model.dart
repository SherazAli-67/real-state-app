class PropertyModel {
  final String location;
  final String locationTitle;
  final String description;
  final double price;
  final List<String> images;
  final List<String> services;

  PropertyModel({
    required this.location,
    required this.locationTitle,
    required this.description,
    required this.price,
    required this.images,
    required this.services,
  });
}
