class Note {
  String title;
  Note({required this.title});

  factory Note.fromJson(Map<String, dynamic> json) => Note(title: json['tile']);

  Map<String, dynamic> toJson() => {'title': title};
}
