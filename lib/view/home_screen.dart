import 'package:flutter/material.dart';
import 'package:news_hive/models/news_item.dart';
import 'package:news_hive/utils/helper.dart';
import 'package:news_hive/widgets/news_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  int _selectedTab = 0;
  final List<String> _tabs = ['Headline', 'Top Stories', 'Similar News'];

  final List<NewsItem> _newsItems = [
    NewsItem(
      title: 'Tesla stock jumps after earnings beat expectations',
      categories: ['Business', 'Technology'],
      date: '2020-12-01',
      imageUrl: 'assets/images/tesla.jpg',
      isBookmarked: false,
    ),
    NewsItem(
      title: 'Tesla stock jumps after new factory announcement',
      categories: ['Business', 'Technology'],
      date: '2020-12-01',
      imageUrl: 'assets/images/tesla.jpg',
      isBookmarked: false,
    ),
    NewsItem(
      title: 'Tesla stock jumps after record deliveries',
      categories: ['Business', 'Technology'],
      date: '2020-12-01',
      imageUrl: 'assets/images/tesla.jpg',
      isBookmarked: false,
    ),
    NewsItem(
      title: 'Tesla stock jumps after new model reveal',
      categories: ['Business', 'Technology'],
      date: '2020-12-01',
      imageUrl: 'assets/images/tesla.jpg',
      isBookmarked: false,
    ),
    NewsItem(
      title: 'Tesla stock jumps after international expansion',
      categories: ['Business', 'Technology'],
      date: '2020-12-01',
      imageUrl: 'assets/images/tesla.jpg',
      isBookmarked: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cWhite,
      body: SafeArea(
        child: Column(
          children: [
            _buildAppBar(),
            _buildSearchBar(),
            _buildTabBar(),
            _buildFeaturedNews(),
            _buildAllNewsHeader(),
            Expanded(child: _buildNewsList()),
          ],
        ),
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  Widget _buildAppBar() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: cPrimary, width: 1.0)),
      ),
      child: Row(
        children: [
          Image.asset('assets/images/Group 9 (1).png', width: 24, height: 24),
          const SizedBox(width: 8),
          Text(
            'News Hive',
            style: poppinsStyle(
              fontSize: tsSubtitle1,
              fontWeight: fBold,
              color: cBlack,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSearchBar() {
    return Container(
      margin: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        border: Border.all(color: cLinear),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Icon(Icons.search, color: cTextBlue),
          ),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                border: InputBorder.none,
                hintStyle: poppinsStyle(
                  fontSize: tsSubtitle2,
                  fontWeight: fRegular,
                  color: cTextBlue,
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.tune, color: cBlack),
          ),
        ],
      ),
    );
  }

  Widget _buildTabBar() {
    return SizedBox(
      height: 40,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _tabs.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                _selectedTab = index;
              });
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color:
                        _selectedTab == index ? cPrimary : Colors.transparent,
                    width: 2.0,
                  ),
                ),
              ),
              child: Text(
                _tabs[index],
                style: poppinsStyle(
                  fontSize: tsSubtitle2,
                  fontWeight: _selectedTab == index ? fBold : fRegular,
                  color: _selectedTab == index ? cPrimary : cBlack,
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildFeaturedNews() {
    return Container(
      margin: const EdgeInsets.all(16.0),
      height: 150,
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                image: const DecorationImage(
                  image: AssetImage('assets/images/bendera.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      padding: const EdgeInsets.all(8.0),
                      color: Colors.black.withOpacity(0.5),
                      child: Text(
                        'Lorem ipsum sit dolor',
                        style: poppinsStyle(
                          fontSize: tsSubtitle2,
                          fontWeight: fBold,
                          color: cWhite,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 10,
                    right: 10,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: cPrimary,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Text(
                        '330 × 150',
                        style: poppinsStyle(
                          fontSize: tsCaption,
                          fontWeight: fRegular,
                          color: cWhite,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                image: const DecorationImage(
                  image: AssetImage('assets/images/titik.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      padding: const EdgeInsets.all(8.0),
                      color: Colors.black.withOpacity(0.5),
                      child: Text(
                        'Lorem',
                        style: poppinsStyle(
                          fontSize: tsSubtitle2,
                          fontWeight: fBold,
                          color: cWhite,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAllNewsHeader() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      alignment: Alignment.centerLeft,
      child: Text(
        'All News',
        style: poppinsStyle(
          fontSize: tsHeadLine3,
          fontWeight: fBold,
          color: cBlack,
        ),
      ),
    );
  }

  Widget _buildNewsList() {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      itemCount: _newsItems.length,
      itemBuilder: (context, index) {
        return NewsCard(newsItem: _newsItems[index]);
      },
    );
  }

  Widget _buildBottomNavigationBar() {
    return BottomNavigationBar(
      currentIndex: _selectedIndex,
      onTap: (index) {
        setState(() {
          _selectedIndex = index;
        });
      },
      selectedItemColor: cPrimary,
      unselectedItemColor: cTextBlue,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(
          icon: Icon(Icons.bookmark_border),
          label: 'Bookmarks',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline),
          label: 'Profile',
        ),
      ],
    );
  }
}
