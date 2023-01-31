class EventModel {
  final int attendance;
  final String description;
  final String title;
  final String date;

  EventModel({
    required this.attendance,
    required this.description,
    required this.title,
    required this.date,
  });

  factory EventModel.fromJson(Map<String, dynamic> json) => EventModel(
        attendance: json['attendance'],
        description: json['description'],
        title: json['title'],
        date: json['date'],
      );
}
