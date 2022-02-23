class Locations {
  String title;
  int days;
  int cost;
  double rating;
  String image;
  bool selected;

  Locations(
      this.title, this.days, this.cost, this.rating, this.image, this.selected);

  static List<Locations> generatedLocation() {
    return [
      Locations(
          "Norway", 7, 150, 4.0, "assets/images/img1.png", true),
      Locations(
          "Scotland", 4, 100, 2.0, "assets/images/img2.png", true),
      Locations(
          "Newyork", 3, 300, 2.0, "assets/images/img1.png", false),
      Locations(
          "India", 8, 600, 3.0, "assets/images/img2.png", false),
      Locations(
          "Asia", 10, 1000, 2.0, "assets/images/img1.png", true),
    ];
  }
}
