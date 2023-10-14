class Items {
  final String img;
  final String title;
  final String subTitle;

  ///
  Items({
    required this.img,
    required this.title,
    required this.subTitle,
  });
}

List<Items> listOfItems = [
  Items(
    img: 'assets/images/image1.svg',
    title: "Greater Accessibility", 
    subTitle:  "Eliminating the barriers to EV \nownership through simplified \ncomprehensive solutions.",
  ),
  Items(
    img: 'assets/images/image3.svg',
    title: "Greater Accessibility",
    subTitle:  "Eliminating the barriers to EV \nownership through simplified \ncomprehensive solutions.",
  ),
  Items(
    img: 'assets/images/license.svg',
    title: "Greater Accessibility",
    subTitle:  "Eliminating the barriers to EV \nownership through simplified \ncomprehensive solutions.",
  ),
];