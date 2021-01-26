class Space {
  int id;
  String name;
  String imageUrl;
  int price;
  String city;
  String country;
  int rating;
  String address;
  String phone;
  String mapUrl;
  List photos;
  int numberOfTollDistance;
  int numberOfCityDistance;
  int numberOfLargeArea;

  Space({
    this.city,
    this.country,
    this.name,
    this.id,
    this.imageUrl,
    this.price,
    this.rating,
    this.address,
    this.phone,
    this.mapUrl,
    this.photos,
    this.numberOfTollDistance,
    this.numberOfCityDistance,
    this.numberOfLargeArea,
  });

  Space.fromJson(json) {
    id = json['id'];
    name = json['name'];
    imageUrl = json['image_url'];
    city = json['city'];
    country = json['country'];
    price = json['price'];
    rating = json['rating'];
    address = json['address'];
    phone = json['phone'];
    mapUrl = json['map_url'];
    numberOfCityDistance = json['number_of_city_distance'];
    numberOfTollDistance = json['number_of_toll_distance'];
    numberOfLargeArea = json['number_of_large_area'];
  }
}
