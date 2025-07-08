import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:bangali_app_flutter_ui/config/colors.dart';
import 'package:bangali_app_flutter_ui/screens/widgets/custom_button.dart';

class CreatePostScreen extends StatefulWidget {
  const CreatePostScreen({Key? key}) : super(key: key);

  @override
  State<CreatePostScreen> createState() => _CreatePostScreenState();
}

class _CreatePostScreenState extends State<CreatePostScreen> {
  final TextEditingController _captionController = TextEditingController();
  final TextEditingController _locationController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: kWhite,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: SvgPicture.asset('assets/icons/button_back.svg'),
        ),
        title: Text(
          'Create Post',
          style: Theme.of(context)
              .textTheme
              .bodyLarge!
              .copyWith(fontWeight: FontWeight.w700),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: CustomButton(
              child: SvgPicture.asset(
                'assets/icons/send.svg',
                color: kWhite,
              ),
              onTap: () {
                // Handle post creation
                Navigator.pop(context);
              },
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
              // Image selection area
              GestureDetector(
                onTap: () {
                  // Handle image selection
                },
                child: Container(
                  width: double.infinity,
                  height: size.height * 0.25,
                  decoration: BoxDecoration(
                    color: k2MainThemeColor,
                    borderRadius: BorderRadius.circular(20.0),
                    border: Border.all(
                      color: k2AccentStroke,
                      width: 2.0,
                      style: BorderStyle.solid,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        'assets/icons/Button-photos.svg',
                        width: 48.0,
                        height: 48.0,
                        color: k2AccentStroke,
                      ),
                      const SizedBox(height: 16.0),
                      Text(
                        'Tap to add photos',
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge!
                            .copyWith(color: k2AccentStroke),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 30.0),

              // Caption input
              Text(
                'Caption',
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 12.0),
              Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: kWhite,
                  borderRadius: BorderRadius.circular(15.0),
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0, 4),
                      blurRadius: 25.0,
                      color: kBlack.withOpacity(0.10),
                    ),
                  ],
                ),
                child: TextField(
                  controller: _captionController,
                  maxLines: 4,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Write something about your post...',
                    hintStyle: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .copyWith(color: k1LightGray),
                  ),
                ),
              ),
              const SizedBox(height: 24.0),

              // Location input
              Text(
                'Location',
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 12.0),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                decoration: BoxDecoration(
                  color: kWhite,
                  borderRadius: BorderRadius.circular(15.0),
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0, 4),
                      blurRadius: 25.0,
                      color: kBlack.withOpacity(0.10),
                    ),
                  ],
                ),
                child: TextField(
                  controller: _locationController,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Add location',
                    hintStyle: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .copyWith(color: k1LightGray),
                    prefixIcon: SvgPicture.asset(
                      'assets/icons/search.svg',
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30.0),

              // Privacy settings
              Text(
                'Privacy',
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 12.0),
              Row(
                children: [
                  Expanded(
                    child: _buildPrivacyOption(
                      context,
                      'Public',
                      'Everyone can see this post',
                      true,
                    ),
                  ),
                  const SizedBox(width: 16.0),
                  Expanded(
                    child: _buildPrivacyOption(
                      context,
                      'Friends',
                      'Only friends can see',
                      false,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40.0),

              // Share button
              SizedBox(
                width: double.infinity,
                height: 56.0,
                child: ElevatedButton(
                  onPressed: () {
                    // Handle post sharing
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: kBlack,
                    foregroundColor: kWhite,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(28.0),
                    ),
                  ),
                  child: Text(
                    'Share Post',
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: kWhite,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPrivacyOption(
    BuildContext context,
    String title,
    String subtitle,
    bool isSelected,
  ) {
    return GestureDetector(
      onTap: () {
        // Handle privacy selection
      },
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: isSelected ? k2AccentStroke.withOpacity(0.1) : kWhite,
          borderRadius: BorderRadius.circular(15.0),
          border: Border.all(
            color: isSelected ? k2AccentStroke : k1LightGray,
            width: 2.0,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 4.0),
            Text(
              subtitle,
              style: Theme.of(context)
                  .textTheme
                  .labelSmall!
                  .copyWith(color: kCaption),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _captionController.dispose();
    _locationController.dispose();
    super.dispose();
  }
}
