import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/svg.dart';
import 'package:bangali_app_flutter_ui/config/colors.dart';
import 'package:bangali_app_flutter_ui/screens/favorites/widgets/favorites_background.dart';
import 'package:bangali_app_flutter_ui/screens/search/search_screen.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FavoritesBackground(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: false,
          title: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              'Favorites',
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(fontWeight: FontWeight.w700),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SearchScreen(),
                    ),
                  );
                },
                icon: SvgPicture.asset('assets/icons/search.svg'),
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Saved Posts',
                  style: Theme.of(context)
                      .textTheme
                      .displaySmall!
                      .copyWith(fontWeight: FontWeight.w700),
                ),
                const SizedBox(height: 30.0),
                StaggeredGrid.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 14.0,
                  crossAxisSpacing: 14.0,
                  children: [
                    StaggeredGridTile.count(
                      crossAxisCellCount: 1,
                      mainAxisCellCount: 1.5,
                      child: _buildFavoriteCard(
                        context,
                        'assets/images/building-1.jpg',
                        'Beautiful Architecture',
                        'Saved 2 days ago',
                      ),
                    ),
                    StaggeredGridTile.count(
                      crossAxisCellCount: 1,
                      mainAxisCellCount: 1.2,
                      child: _buildFavoriteCard(
                        context,
                        'assets/images/building-2.jpg',
                        'Modern Design',
                        'Saved 1 week ago',
                      ),
                    ),
                    StaggeredGridTile.count(
                      crossAxisCellCount: 1,
                      mainAxisCellCount: 1.3,
                      child: _buildFavoriteCard(
                        context,
                        'assets/images/Rectangle-5.png',
                        'Interior Design',
                        'Saved 3 days ago',
                      ),
                    ),
                    StaggeredGridTile.count(
                      crossAxisCellCount: 1,
                      mainAxisCellCount: 1.4,
                      child: _buildFavoriteCard(
                        context,
                        'assets/images/Rectangle-7.png',
                        'Creative Space',
                        'Saved 5 days ago',
                      ),
                    ),
                    StaggeredGridTile.count(
                      crossAxisCellCount: 1,
                      mainAxisCellCount: 1.2,
                      child: _buildFavoriteCard(
                        context,
                        'assets/images/Rectangle-8.png',
                        'Art Gallery',
                        'Saved 1 week ago',
                      ),
                    ),
                    StaggeredGridTile.count(
                      crossAxisCellCount: 1,
                      mainAxisCellCount: 1.6,
                      child: _buildFavoriteCard(
                        context,
                        'assets/images/Rectangle-1.png',
                        'Urban Planning',
                        'Saved 2 weeks ago',
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildFavoriteCard(
    BuildContext context,
    String imagePath,
    String title,
    String subtitle,
  ) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(19.0),
        boxShadow: [
          BoxShadow(
            blurRadius: 10.0,
            offset: const Offset(0, 4),
            color: kBlack.withOpacity(0.1),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(19.0),
        child: Stack(
          children: [
            Image.asset(
              imagePath,
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      kBlack.withOpacity(0.8),
                      kBlack.withOpacity(0.0),
                    ],
                  ),
                ),
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      title,
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: kWhite,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                    const SizedBox(height: 4.0),
                    Text(
                      subtitle,
                      style: Theme.of(context)
                          .textTheme
                          .labelSmall!
                          .copyWith(color: kWhite.withOpacity(0.8)),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 12.0,
              right: 12.0,
              child: Container(
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: kWhite.withOpacity(0.9),
                  shape: BoxShape.circle,
                ),
                child: SvgPicture.asset(
                  'assets/icons/favorite_border.svg',
                  color: k2AccentStroke,
                  width: 20.0,
                  height: 20.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
