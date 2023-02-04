class Event {
  final String id;
  final String title;
  final String category;
  final String dateTime;
  final String description;
  final String status;

  Event({
    required this.id,
    required this.title,
    required this.category,
    required this.dateTime,
    required this.description,
    required this.status,
  });
  /*
  
  [
  {
    "id": 1,
    "title": "Cybersecurity Day",
    "category": "socialize",
    "datetime": "2023-02-12 10:00:00",
    "description": "A programming camp organized by CS department to enhance students programming skills.",
    "status": "approved"
    "attendance": 15
  },
  {
    "id": 2,
    "title": "Introduction of Data Science Workshop",
    "category": "workshop",
    "datetime": "2023-02-15 07:00:00",
    "description": "A workshop organized by IT department.",
    "status": "approved"
    "attendance": 15
  },
  {
    "id": 3,
    "title": "Data Science Day",
    "category": "socialize",
    "datetime": "2023-02-20 08:00:00",
    "description": "A conference",
    "status": "approved"
    "attendance": 15
  }
]
  
   */

  factory Event.fromJson(json) => Event(
        id: json['id'].toString(),
        title: json['title'],
        category: json['category'],
        dateTime: json['datetime'],
        description: json['description'],
        status: json['status'],
      );
}
