class ItemCategory {
  String imagePath;
  String text;

  ItemCategory({this.text, this.imagePath});
}

List<ItemCategory> items = [
  ItemCategory(imagePath: 'images/apple_speaker.png', text: 'Pod Speaker'),
  ItemCategory(imagePath: 'images/cctv_cam.png', text: 'CCTV Camera'),
  ItemCategory(imagePath: 'images/tv.png', text: 'Television'),
  ItemCategory(imagePath: 'images/google_nest.png', text: 'Google Nest'),
  ItemCategory(imagePath: 'images/home_appliances.png', text: 'Appliances'),
  ItemCategory(imagePath: 'images/router.png', text: 'Wifi Router'),
];
