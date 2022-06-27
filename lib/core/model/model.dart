import 'dart:convert';

List<Todo> todoFromJson(String str) =>
    List<Todo>.from(json.decode(str).map((x) => Todo.fromMap(x)));
// List<Team> teamFromJson(String str) =>
//     List<Team>.from(json.decode(str).map((x) => Team.fromMap(x)));

class Login {
  String username;
  String password;

  Login({
    this.username = '',
    this.password = '',
  });
}

class Todo {
  String title;
  String description;
  String target_date;
  bool is_done;
  bool is_deleted;
  int id;

  Todo({
    this.title = '',
    this.description = '',
    this.target_date = '',
    required this.id,
    this.is_done = false,
    this.is_deleted = false,
  });

  factory Todo.fromMap(Map<String, dynamic> json) {
    print(json['title']);
    print(json['description']);
    print(json['title']);
    return Todo(
      title: json['title'],
      description: json['description'],
      target_date: json['target_date'],
      id: 0,
    );
  }
}

// class Team {
//   String teamName;
//   String description;
//   bool is_deleted;
//   int owner;

//   Team({
//     this.teamName = '',
//     this.description = '',
//     this.is_deleted = false,
//     required this.owner,
//   });

//   factory Team.fromMap(Map<String, dynamic> json) {
//     print(json['team_name']);
//     print(json['description']);
//     print(json['owner']);
//     return Team(
//       teamName: json['team_name'],
//       description: json['description'],
//       owner: json['owner'],
//     );
//   }
// }

class Post {
  final int userId;
  final int id;
  final String title;
  final String body;

  Post({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      userId: json['userId'] as int,
      id: json['id'] as int,
      title: json['title'] as String,
      body: json['body'] as String,
    );
  }
}