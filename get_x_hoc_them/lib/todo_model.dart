class UserModel {
  num? userId;
  num? id;
  String? title;
  bool? completed;

  UserModel({
    this.userId,
    this.id,
    this.title,
    this.completed,
  });

  UserModel.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    id = json['id'];
    title = json['title'];
    completed = json['completed'];
  }
}
