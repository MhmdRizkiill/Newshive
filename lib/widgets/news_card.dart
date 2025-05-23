import 'package:flutter/material.dart';
import 'package:news_hive/models/news_item.dart';
import 'package:news_hive/utils/helper.dart';

class NewsCard extends StatefulWidget {
  final NewsItem newsItem;

  const NewsCard({
    super.key,
    required this.newsItem,
  });

  @override
  State<NewsCard> createState() => _NewsCardState();
}

class _NewsCardState extends State<NewsCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              widget.newsItem.imageUrl,
              width: 80,
              height: 80,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.newsItem.title,
                  style: poppinsStyle(
                    fontSize: tsSubtitle1,
                    fontWeight: fBold,
                    color: cBlack,
                  ),
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    ...widget.newsItem.categories.map((category) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Text(
                          category,
                          style: poppinsStyle(
                            fontSize: tsCaption,
                            fontWeight: fRegular,
                            color: cTextBlue,
                          ),
                        ),
                      );
                    }).toList(),
                  ],
                ),
                const SizedBox(height: 4),
                Text(
                  widget.newsItem.date,
                  style: poppinsStyle(
                    fontSize: tsCaption,
                    fontWeight: fRegular,
                    color: cTextBlue,
                  ),
                ),
              ],
            ),
          ),
          IconButton(
            icon: Icon(
              widget.newsItem.isBookmarked
                  ? Icons.bookmark
                  : Icons.bookmark_border,
              color: cTextBlue,
            ),
            onPressed: () {
              setState(() {
                widget.newsItem.toggleBookmark();
              });
            },
          ),
        ],
      ),
    );
  }
}
