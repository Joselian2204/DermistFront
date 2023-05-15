class ModelResult{
  String name;
  num percentage;

  ModelResult({
    required this.name,
    required this.percentage
});

  factory ModelResult.fromJson(Map<String,dynamic> json)=>
      ModelResult(
          name: json["name"],
          percentage: json["percentage"] is String?num.parse(json["percentage"]):json["percentage"]    );
}