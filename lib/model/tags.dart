class Tags {
  final String name;
  final List<String> versions;

  Tags(this.name, this.versions);

  Tags.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        versions = json['versions'];

  Map<String, dynamic> toJson() => {
        'name': name,
        'versions': versions,
      };
}
