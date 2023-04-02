class Pod {
  final String? author;
  final String title;
  final String date;
  final String description;
  final String url;
  final String? hdUrl;
  final String? thumbnail;
  final MediaType mediaType;

  Pod(
    this.author,
    this.title,
    this.date,
    this.description,
    this.url,
    this.hdUrl,
    this.thumbnail,
    this.mediaType,
  );
}

enum MediaType { image, video }
