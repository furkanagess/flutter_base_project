class ImageConstants {
  static ImageConstants? _instance;
  static ImageConstants? get instance {
    _instance ??= ImageConstants._init();
    return _instance;
  }

  ImageConstants._init();
  String get logo => toPng("furkan");

  String toPng(String name) => "assets/image/$name.png";
}
