abstract class AppImages {
  String get logoFull;
  String get logomini;
  String get union;
  String get person;
  String get google;
}

class AppImagesDefault implements AppImages {
  @override
  String get google => "assets/images/google.png";

  @override
  String get logoFull => "assets/images/logofull.png";

  @override
  String get logomini => "assets/images/logomini.png";

  @override
  String get person => "assets/images/person.png";

  @override
  String get union => "assets/images/union.png";
}
