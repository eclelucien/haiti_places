class HotelListData {
  HotelListData({
    this.imagePath = '',
    this.titleTxt = '',
    this.subTxt = '',
    this.dist = 1.8,
    this.reviews = 80,
    this.rating = 4.5,
    this.perNight = 180,
  });

  String imagePath;
  String titleTxt;
  String subTxt;
  double dist;
  double rating;
  int reviews;
  int perNight;

  static List<HotelListData> hotelList = <HotelListData>[
    HotelListData(
      imagePath: 'assets/citadelle.jpg',
      titleTxt: 'La Citadelle',
      subTxt: 'Rue Lamarque',
      dist: 2.0,
      rating: 4.4,
    ),
    HotelListData(
      imagePath: 'assets/cathedrale.jpg',
      titleTxt: 'Cathedrale de P.A.P',
      subTxt: 'Rue Petion',
      dist: 4.0,
      reviews: 74,
    ),
    HotelListData(
      imagePath: 'assets/boulevard.jpg',
      titleTxt: 'Institution Louis Janvier',
      subTxt: 'Rue liberté',
      dist: 3.0,
      reviews: 62,
      rating: 4.0,
    ),
    HotelListData(
      imagePath: 'assets/cathedrale.jpg',
      titleTxt: 'Eglise Methodiste',
      subTxt: 'Rue Jean Jaques',
      dist: 7.0,
      reviews: 90,
      rating: 4.4,
    ),
    HotelListData(
      imagePath: 'assets/larue.jpg',
      titleTxt: 'Mairie des Gves',
      subTxt: 'Routes des frere',
      dist: 2.0,
      reviews: 240,
    ),
    HotelListData(
      imagePath: 'assets/boulevard.jpg',
      titleTxt: 'Grand Royal Hotel',
      subTxt: 'Rue liberté',
      dist: 3.0,
      reviews: 62,
      rating: 4.0,
    ),
    HotelListData(
      imagePath: 'assets/citadelle.jpg',
      titleTxt: 'La mariotte Hotel',
      subTxt: 'Rue Lamarque',
      dist: 2.0,
      rating: 4.4,
    ),
  ];
}
