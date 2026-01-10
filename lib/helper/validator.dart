class Validator {
  static bool imageValidator({required String imageUrl}) {
    if (imageUrl.startsWith("http://") || imageUrl.startsWith("https://")) {
      return true;
    } else {
      return false;
    }
  }
}
