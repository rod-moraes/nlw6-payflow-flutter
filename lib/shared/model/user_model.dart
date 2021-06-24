import 'dart:convert';

class UserModel {
  final String name;
  final String? photoUrl;
  UserModel({
    required this.name,
    this.photoUrl,
  });

  UserModel copyWith({
    String? name,
    String? photoUrl,
  }) {
    return UserModel(
      name: name ?? this.name,
      photoUrl: photoUrl ?? this.photoUrl,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'photoUrl': photoUrl,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      name: map['name'],
      photoUrl: map['photoUrl'],
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source));

  @override
  String toString() => 'UserModel(name: $name, photoUrl: $photoUrl)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is UserModel &&
        other.name == name &&
        other.photoUrl == photoUrl;
  }

  @override
  int get hashCode => name.hashCode ^ photoUrl.hashCode;
}
