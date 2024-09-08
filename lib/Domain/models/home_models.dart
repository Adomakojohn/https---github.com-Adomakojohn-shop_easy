class FeaturedModel {
  String referenceText;
  String featuredPicture;

  FeaturedModel({
    required this.referenceText,
    required this.featuredPicture,
  });
}

class DealsModel {
  String itemName;
  String itemInfo;
  String itemPrice;
  String itemRating;
  String imagePath;

  DealsModel(
      {required this.itemName,
      required this.itemInfo,
      required this.itemPrice,
      required this.itemRating,
      required this.imagePath});
}
