class Tags {
  final String name;
  final List<String> versions;

  Tags(this.name, this.versions);

  Tags.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        versions = List<String>.from(json['versions'].map((version) => Tags.fromJson(version)));

  Map<String, dynamic> toJson() => {
        'name': name,
        'versions': versions,
      };
}
