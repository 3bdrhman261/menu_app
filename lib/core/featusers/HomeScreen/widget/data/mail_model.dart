class Meal {
  final String name;
  final String discretion;
  final String time;
  final String image;
  final double rate;

  Meal({
    required this.rate,
    required this.name,
    required this.time,
    required this.discretion,
    required this.image,
  });

  Map<String, dynamic> toMap() {
    return {
      'title': name,
      'time': time,
      'discretion': discretion, 
      'image': image,
      'rate': rate,
    };
  }

  factory Meal.fromMap(Map<String, dynamic> map) {
    return Meal(
      name: map['title'],
      time: map['time'],
      discretion: map['discretion'],
      image: map['image'] ?? '',
      rate: map['rate'] ?? 0.toDouble(),
    );
  }
}
