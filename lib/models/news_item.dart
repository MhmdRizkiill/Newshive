class NewsItem {
  final String title;
  final List<String> categories;
  final String date;
  final String imageUrl;
  bool isBookmarked;

  NewsItem({
    required this.title,
    required this.categories,
    required this.date,
    required this.imageUrl,
    this.isBookmarked = false,
  });

  void toggleBookmark() {
    isBookmarked = !isBookmarked;
  }
}
