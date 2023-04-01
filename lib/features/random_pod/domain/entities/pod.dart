class Pod {
  final String author;
  final String title;
  final String date;
  final String description;
  final String url;
  final String? hdUrl;
  final MediaType mediaType;

  Pod(
    this.author,
    this.title,
    this.date,
    this.description,
    this.url,
    this.hdUrl,
    this.mediaType,
  );
}

enum MediaType { image, video }
