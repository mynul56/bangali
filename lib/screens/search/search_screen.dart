import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:bangali_app_flutter_ui/config/colors.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _searchController = TextEditingController();
  final List<String> _recentSearches = [
    'Bengali Culture',
    'Durga Puja',
    'Tagore Poems',
    'Bengali Food',
    'Kolkata',
  ];

  final List<String> _trendingTopics = [
    'Poila Boishakh',
    'Rabindranath Tagore',
    'Bengali Literature',
    'Adda Culture',
    'Fish Curry',
    'Mishti Doi',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: SvgPicture.asset('assets/icons/button_back.svg'),
        ),
        title: Container(
          height: 40.0,
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          decoration: BoxDecoration(
            color: k2MainThemeColor,
            borderRadius: BorderRadius.circular(20.0),
            border: Border.all(color: k2AccentStroke.withOpacity(0.3)),
          ),
          child: TextField(
            controller: _searchController,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Search Bangali...',
              hintStyle: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(color: k1LightGray),
              prefixIcon: SvgPicture.asset(
                'assets/icons/search.svg',
                fit: BoxFit.scaleDown,
              ),
            ),
            onChanged: (value) {
              // Handle search
            },
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Recent Searches
              Text(
                'Recent Searches',
                style: Theme.of(context)
                    .textTheme
                    .displaySmall!
                    .copyWith(fontWeight: FontWeight.w700),
              ),
              const SizedBox(height: 16.0),
              ...List.generate(
                _recentSearches.length,
                (index) => _buildSearchItem(
                  context,
                  _recentSearches[index],
                  'assets/icons/search.svg',
                  true,
                ),
              ),
              const SizedBox(height: 30.0),

              // Trending Topics
              Text(
                'Trending in Bengali Community',
                style: Theme.of(context)
                    .textTheme
                    .displaySmall!
                    .copyWith(fontWeight: FontWeight.w700),
              ),
              const SizedBox(height: 16.0),
              Wrap(
                spacing: 12.0,
                runSpacing: 12.0,
                children: _trendingTopics
                    .map((topic) => _buildTrendingChip(context, topic))
                    .toList(),
              ),
              const SizedBox(height: 30.0),

              // Popular Categories
              Text(
                'Explore Categories',
                style: Theme.of(context)
                    .textTheme
                    .displaySmall!
                    .copyWith(fontWeight: FontWeight.w700),
              ),
              const SizedBox(height: 16.0),
              GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisSpacing: 16.0,
                mainAxisSpacing: 16.0,
                childAspectRatio: 1.5,
                children: [
                  _buildCategoryCard(context, 'Culture & Heritage',
                      'assets/images/building-1.jpg'),
                  _buildCategoryCard(context, 'Food & Recipes',
                      'assets/images/building-2.jpg'),
                  _buildCategoryCard(context, 'Art & Literature',
                      'assets/images/Rectangle-5.png'),
                  _buildCategoryCard(context, 'Music & Dance',
                      'assets/images/Rectangle-7.png'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSearchItem(
    BuildContext context,
    String title,
    String iconPath,
    bool isRecent,
  ) {
    return GestureDetector(
      onTap: () {
        // Handle search item tap
      },
      child: Container(
        padding: const EdgeInsets.all(16.0),
        margin: const EdgeInsets.only(bottom: 12.0),
        decoration: BoxDecoration(
          color: k2MainThemeColor.withOpacity(0.3),
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Row(
          children: [
            SvgPicture.asset(
              iconPath,
              width: 20.0,
              height: 20.0,
              color: k2AccentStroke,
            ),
            const SizedBox(width: 16.0),
            Expanded(
              child: Text(
                title,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
            if (isRecent)
              GestureDetector(
                onTap: () {
                  // Handle remove from recent
                },
                child: const Icon(
                  Icons.close,
                  size: 20.0,
                  color: k1LightGray,
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildTrendingChip(BuildContext context, String title) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      decoration: BoxDecoration(
        color: k2AccentStroke.withOpacity(0.1),
        borderRadius: BorderRadius.circular(20.0),
        border: Border.all(color: k2AccentStroke),
      ),
      child: Text(
        '#$title',
        style: Theme.of(context)
            .textTheme
            .bodyLarge!
            .copyWith(color: k2AccentStroke),
      ),
    );
  }

  Widget _buildCategoryCard(
      BuildContext context, String title, String imagePath) {
    return GestureDetector(
      onTap: () {
        // Handle category tap
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          boxShadow: [
            BoxShadow(
              blurRadius: 10.0,
              offset: const Offset(0, 4),
              color: kBlack.withOpacity(0.1),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15.0),
          child: Stack(
            children: [
              Image.asset(
                imagePath,
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      kBlack.withOpacity(0.7),
                      kBlack.withOpacity(0.0),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 12.0,
                left: 12.0,
                right: 12.0,
                child: Text(
                  title,
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: kWhite,
                        fontWeight: FontWeight.w600,
                      ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }
}
