class User {
  final int id;
  final String name;
  final String avatar;
  final String email;
  final String about;

  User({
    required this.id,
    required this.name,
    required this.avatar,
    this.email = 'georgeoleary2002@gmail.com',
    this.about = 'Homeowner based in Nenagh',
  });
}
