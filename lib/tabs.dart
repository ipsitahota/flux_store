import 'package:flutter/material.dart';

class ShopTab extends StatefulWidget {
  @override
  _ShopTabState createState() => _ShopTabState();
}

class _ShopTabState extends State<ShopTab> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    // Listen to page changes for updating current page indicator
    _pageController.addListener(() {
      setState(() {
        _currentPage = _pageController.page!.round();
      });
    });
  }

  @override
  void dispose() {
    // Dispose of the page controller to avoid memory leaks
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Responsive padding and font sizes
    double paddingValue = MediaQuery.of(context).size.width * 0.05;
    double titleFontSize = MediaQuery.of(context).size.width * 0.04;
    double subtitleFontSize = MediaQuery.of(context).size.width * 0.045;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Category items row
            Padding(
              padding: EdgeInsets.symmetric(horizontal: paddingValue * 0.3),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: CategoryItem(
                      iconPath: 'images/male_icon.png',
                      label: 'Men',
                      onTap: () {
                        print('Tapped on Men');
                      },
                      titleFontSize: titleFontSize,
                    ),
                  ),
                  Expanded(
                    child: CategoryItem(
                      iconPath: 'images/female_icon.png',
                      label: 'Women',
                      onTap: () {
                        print('Tapped on Women');
                      },
                      titleFontSize: titleFontSize,
                    ),
                  ),
                  Expanded(
                    child: CategoryItem(
                      iconPath: 'images/cloth_icon.png',
                      label: 'Clothing',
                      onTap: () {
                        print('Tapped on Clothing');
                      },
                      titleFontSize: titleFontSize,
                    ),
                  ),
                  Expanded(
                    child: CategoryItem(
                      iconPath: 'images/Purse.png',
                      label: 'Posters',
                      onTap: () {
                        print('Tapped on Posters');
                      },
                      titleFontSize: titleFontSize,
                    ),
                  ),
                  Expanded(
                    child: CategoryItem(
                      iconPath: 'images/cap.png',
                      label: 'Music',
                      onTap: () {
                        print('Tapped on Music');
                      },
                      titleFontSize: titleFontSize,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.020),
            // Sliding section with indicators
            Padding(
              padding: EdgeInsets.symmetric(horizontal: paddingValue),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.26,
                child: Stack(
                  children: [
                    PageView(
                      controller: _pageController,
                      children: [
                        SlidingSection(
                          title: '| SUMMER COLLECTION 2019',
                          subtitle: 'Blue Summer are already in store',
                          image: 'images/blue.png',
                        ),
                        SlidingSection(
                          title: '| WINTER COLLECTION 2020',
                          subtitle: 'Warm and stylish for the season',
                          image: 'images/winter.png',
                        ),
                        SlidingSection(
                          title: '| SPRING COLLECTION 2021',
                          subtitle: 'Fresh colors and patterns',
                          image: 'images/spring.png',
                        ),
                      ],
                    ),
                    Positioned(
                      bottom: MediaQuery.of(context).size.height * 0.02,
                      left: 0,
                      right: 0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(3, (index) {
                          return Container(
                            width: MediaQuery.of(context).size.width * 0.056,
                            height: MediaQuery.of(context).size.width * 0.005,
                            margin: EdgeInsets.symmetric(horizontal: 2.0),
                            // Indicator dots
                            color: _currentPage == index
                                ? Colors.black
                                : Colors.grey,
                          );
                        }),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.005),
            // Other sections
            Padding(
              padding: EdgeInsets.symmetric(horizontal: paddingValue),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // Section with image and text
                  Stack(
                    alignment: Alignment.centerLeft,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.18,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('images/for_gen.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 0,
                          bottom: MediaQuery.of(context).size.height * 0.04,
                          left: MediaQuery.of(context).size.width * 0.04,
                          right: 0,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'For Gen',
                              style: TextStyle(
                                  fontSize: titleFontSize,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black38),
                            ),
                            Text(
                              'HANG OUT & PARTY',
                              style: TextStyle(
                                  fontSize: subtitleFontSize,
                                  color: Colors.black87),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.015),
                  // Two side-by-side sections with images and text
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Stack(
                          alignment: Alignment.centerRight,
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height * 0.19,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('images/tshirts.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            FractionallySizedBox(
                              widthFactor: 0.6,
                              child: Padding(
                                padding: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.height *
                                      0.025,
                                  left:
                                      MediaQuery.of(context).size.width * 0.04,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'T-Shirts',
                                      style: TextStyle(
                                          fontSize: titleFontSize,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                    Text(
                                      'THE OFFICE LIFE',
                                      style: TextStyle(
                                          fontSize: subtitleFontSize * 0.8,
                                          color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width * 0.02),
                      Expanded(
                        child: Stack(
                          alignment: Alignment.centerLeft,
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height * 0.19,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('images/dress.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            FractionallySizedBox(
                              widthFactor: 0.6,
                              child: Padding(
                                padding: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.height *
                                      0.025,
                                  left:
                                      MediaQuery.of(context).size.width * 0.02,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Dress',
                                      style: TextStyle(
                                          fontSize: titleFontSize,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black38),
                                    ),
                                    Text(
                                      'ELEGANT DESIGN',
                                      style: TextStyle(
                                          fontSize: subtitleFontSize * 0.8,
                                          color: Colors.black87),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SlidingSection extends StatelessWidget {
  final String title;
  final String subtitle;
  final String image;

  SlidingSection(
      {required this.title, required this.subtitle, required this.image});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          image,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Positioned(
          top: MediaQuery.of(context).size.height * 0.02,
          left: MediaQuery.of(context).size.width * 0.04,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * 0.03,
                  color: Colors.black54,
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              Container(
                width: MediaQuery.of(context).size.width * 0.4,
                child: Text(
                  subtitle,
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width * 0.05,
                    fontWeight: FontWeight.w500,
                    color: const Color.fromARGB(221, 22, 20, 20),
                  ),
                  maxLines: null,
                  softWrap: true,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class CategoryItem extends StatefulWidget {
  final String iconPath;
  final String label;
  final VoidCallback onTap;
  final double titleFontSize;

  CategoryItem(
      {required this.iconPath,
      required this.label,
      required this.onTap,
      required this.titleFontSize});

  @override
  _CategoryItemState createState() => _CategoryItemState();
}

class _CategoryItemState extends State<CategoryItem> {
  bool _isTapped = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) {
        setState(() {
          _isTapped = true;
        });
      },
      onTapUp: (_) {
        setState(() {
          _isTapped = false;
        });
        widget.onTap();
      },
      onTapCancel: () {
        setState(() {
          _isTapped = false;
        });
      },
      child: Container(
        // decoration: BoxDecoration(
        //   //borderRadius: BorderRadius.circular(16),
        //   border: Border.all(color: Colors.grey, width: 1.0),
        // ),
        padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.03),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.20,
              height: MediaQuery.of(context).size.width * 0.15,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: _isTapped
                    ? Colors.grey.withOpacity(0.4)
                    : Colors.grey.withOpacity(0.2),
              ),
              child: Center(
                child: Image.asset(
                  widget.iconPath,
                  width: MediaQuery.of(context).size.width * 0.1,
                  height: MediaQuery.of(context).size.width * 0.1,
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.01),
            Text(
              widget.label,
              style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * 0.03,
                  color: Colors.black54,
                  fontWeight: FontWeight.w500),
              maxLines: null,
              //overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}

class SearchTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Search - Not available yet'));
  }
}

class CartTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Cart - Not available yet'));
  }
}

class ProfileTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Profile - Not available yet'));
  }
}

void main() {
  runApp(MaterialApp(
    home: ShopTab(),
  ));
}
