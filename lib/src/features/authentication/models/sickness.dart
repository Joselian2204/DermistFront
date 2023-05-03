class Sickness {
  String name;
  String image;
  String description;

  Sickness({
    required this.name,
    required this.description,
    required this.image
});
  factory Sickness.fromJson(Map<String,dynamic> json)=>
      Sickness(
          name: json["name"],
          description: json["description"],
          image: json["image"]);
}