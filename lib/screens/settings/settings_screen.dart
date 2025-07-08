import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:bangali_app_flutter_ui/config/colors.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool _notificationsEnabled = true;
  bool _darkModeEnabled = false;
  bool _privateAccount = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: SvgPicture.asset('assets/icons/button_back.svg'),
        ),
        title: Text(
          'Settings',
          style: Theme.of(context)
              .textTheme
              .bodyLarge!
              .copyWith(fontWeight: FontWeight.w700),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Profile Section
              _buildSectionHeader(context, 'Profile'),
              _buildSettingTile(
                context,
                'Edit Profile',
                'Update your profile information',
                'assets/icons/profile.svg',
                onTap: () {
                  // Navigate to edit profile
                },
              ),
              _buildSettingTile(
                context,
                'Privacy Settings',
                'Manage your privacy preferences',
                'assets/icons/favorite_border.svg',
                onTap: () {
                  // Navigate to privacy settings
                },
              ),
              const SizedBox(height: 24.0),

              // Notifications Section
              _buildSectionHeader(context, 'Notifications'),
              _buildSwitchTile(
                context,
                'Push Notifications',
                'Receive notifications about new messages and updates',
                'assets/icons/notif.svg',
                _notificationsEnabled,
                (value) {
                  setState(() {
                    _notificationsEnabled = value;
                  });
                },
              ),
              const SizedBox(height: 24.0),

              // Appearance Section
              _buildSectionHeader(context, 'Appearance'),
              _buildSwitchTile(
                context,
                'Dark Mode',
                'Switch to dark theme',
                'assets/icons/menu.svg',
                _darkModeEnabled,
                (value) {
                  setState(() {
                    _darkModeEnabled = value;
                  });
                },
              ),
              const SizedBox(height: 24.0),

              // Privacy Section
              _buildSectionHeader(context, 'Privacy'),
              _buildSwitchTile(
                context,
                'Private Account',
                'Only followers can see your posts',
                'assets/icons/Button-saved.svg',
                _privateAccount,
                (value) {
                  setState(() {
                    _privateAccount = value;
                  });
                },
              ),
              const SizedBox(height: 24.0),

              // Support Section
              _buildSectionHeader(context, 'Support'),
              _buildSettingTile(
                context,
                'Help Center',
                'Get help and support',
                'assets/icons/message.svg',
                onTap: () {
                  // Navigate to help center
                },
              ),
              _buildSettingTile(
                context,
                'About Bangali',
                'Learn more about our app',
                'assets/icons/home.svg',
                onTap: () {
                  // Show about dialog
                  _showAboutDialog(context);
                },
              ),
              const SizedBox(height: 24.0),

              // Logout Button
              SizedBox(
                width: double.infinity,
                height: 56.0,
                child: ElevatedButton(
                  onPressed: () {
                    _showLogoutDialog(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    foregroundColor: kWhite,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(28.0),
                    ),
                  ),
                  child: Text(
                    'Logout',
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

  Widget _buildSectionHeader(BuildContext context, String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Text(
        title,
        style: Theme.of(context)
            .textTheme
            .displaySmall!
            .copyWith(fontWeight: FontWeight.w700),
      ),
    );
  }

  Widget _buildSettingTile(
    BuildContext context,
    String title,
    String subtitle,
    String iconPath, {
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(16.0),
        margin: const EdgeInsets.only(bottom: 12.0),
        decoration: BoxDecoration(
          color: k2MainThemeColor.withOpacity(0.3),
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: k2AccentStroke.withOpacity(0.1),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: SvgPicture.asset(
                iconPath,
                width: 24.0,
                height: 24.0,
                color: k2AccentStroke,
              ),
            ),
            const SizedBox(width: 16.0),
            Expanded(
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
            const Icon(
              Icons.arrow_forward_ios,
              size: 16.0,
              color: k1LightGray,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSwitchTile(
    BuildContext context,
    String title,
    String subtitle,
    String iconPath,
    bool value,
    Function(bool) onChanged,
  ) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      margin: const EdgeInsets.only(bottom: 12.0),
      decoration: BoxDecoration(
        color: k2MainThemeColor.withOpacity(0.3),
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: k2AccentStroke.withOpacity(0.1),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: SvgPicture.asset(
              iconPath,
              width: 24.0,
              height: 24.0,
              color: k2AccentStroke,
            ),
          ),
          const SizedBox(width: 16.0),
          Expanded(
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
          Switch(
            value: value,
            onChanged: onChanged,
            activeColor: k2AccentStroke,
          ),
        ],
      ),
    );
  }

  void _showAboutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(
          'About Bangali',
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .copyWith(fontWeight: FontWeight.w700),
        ),
        content: Text(
          'Bangali is a social platform designed to connect the Bengali community worldwide. Share your culture, traditions, and stories with fellow Bengalis.',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(
              'Close',
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(color: k2AccentStroke),
            ),
          ),
        ],
      ),
    );
  }

  void _showLogoutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(
          'Logout',
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .copyWith(fontWeight: FontWeight.w700),
        ),
        content: Text(
          'Are you sure you want to logout?',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(
              'Cancel',
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(color: k1LightGray),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              // Handle logout
            },
            child: Text(
              'Logout',
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(color: Colors.red),
            ),
          ),
        ],
      ),
    );
  }
}
