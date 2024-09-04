class EpisodeItemModel {
  final String title;
  final double duration;
  final String imageUrl;

  EpisodeItemModel({
    required this.title,
    required this.duration,
    required this.imageUrl,
  });

  EpisodeItemModel.fromJson(Map<String, dynamic> map)
      : title = map['title'] ?? '',
        duration = (map['duration'] as num?)?.toDouble() ?? 0.0,
        imageUrl = map['imageUrl'] ?? '';
}
