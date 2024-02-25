class ModelsModel {
  final String id;
  final int created;
  final String object;
  final String ownedBy;

  ModelsModel({
    required this.id,
    required this.created,
    required this.object,
    required this.ownedBy,
  });

  factory ModelsModel.fromJson(Map<String, dynamic> json) {
    return ModelsModel(
      id: json["id"] ?? "", // Kiểm tra và sử dụng giá trị mặc định (chẳng hạn "")
      created: json["created"] ?? 0, // Kiểm tra và sử dụng giá trị mặc định (chẳng hạn 0)
      object: json["object"] ?? "", // Kiểm tra và sử dụng giá trị mặc định (chẳng hạn "")
      ownedBy: json["owned_by"] ?? "", // Kiểm tra và sử dụng giá trị mặc định (chẳng hạn "")
    );
  }                                                  

  static List<ModelsModel> modelsFromSnapShot(List? modelSnapshot) {
    if (modelSnapshot == null) {
      return [];
    }

    return modelSnapshot.map((data) {
      return ModelsModel.fromJson(data ?? {});
    }).toList();
  }
}
