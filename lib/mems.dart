class Memes {
  Memes(
      {required this.id,
      required this.name,
      required this.url,
      required this.width,
      required this.height,
      required this.boxCount});

  final String id;
  final String name;
  final String url;
  final int width;
  final int height;
  final int boxCount;

  factory Memes.fromJson(Map<String, Object?> json) => Memes(
        id: json["id"] as String? ?? "",
        name: json["name"] as String? ?? '',
        url: json["url"] as String? ?? '',
        width: json["width"] as int? ?? 0,
        height: json["height"] as int? ?? 0,
        boxCount: json["box_count"] as int? ?? 0,
      );
}
