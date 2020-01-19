class BikeSelection{
  
  final int id;
  final String bike;
  final String img;

  BikeSelection({
    this.id,
    this.bike,
    this.img
  });

}

final BikeSelection superbike = BikeSelection(
  id: 1,
  bike: "Super Bikes",
  img: "assets/images/super_bike.png"
);

final BikeSelection classics = BikeSelection(
  id: 2,
  bike: "Classics",
  img: "assets/images/classics.png"
);

final BikeSelection city = BikeSelection(
  id: 3,
  bike: "City",
  img: "assets/images/city.png"
);

final BikeSelection casuals = BikeSelection(
  id: 4,
  bike: "Casuals",
  img: "assets/images/casuals.png"
);

List<BikeSelection> bikes = [
  superbike,
  classics,
  city,
  casuals
];