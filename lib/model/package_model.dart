class PackageModel {
  String packageName;
  String packageLogo;
  List<dynamic> images;
  String description;

  PackageModel(
      {required this.packageName,
      required this.packageLogo,
      required this.images,
      required this.description});

  factory PackageModel.fromJson(Map<String, dynamic> json) {
    return PackageModel(
        packageName: json['packageName'],
        packageLogo: json['packageIcon'],
        images: json['images'],
        description: json['description']);
  }
}
