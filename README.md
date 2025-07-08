# 🌟 Bangali - Bengali Social Media App

A beautiful and feature-rich social media application designed specifically for the Bengali community worldwide. Built with Flutter, Bangali brings together culture, tradition, and modern social networking.

<div align="center">

![Flutter](https://img.shields.io/badge/Flutter-3.x-blue?style=for-the-badge&logo=flutter)
![Dart](https://img.shields.io/badge/Dart-3.x-blue?style=for-the-badge&logo=dart)
![License](https://img.shields.io/badge/License-MIT-green?style=for-the-badge)
![Platform](https://img.shields.io/badge/Platform-Android%20%7C%20iOS-lightgrey?style=for-the-badge)

</div>

## 📱 About Bangali

Bangali is a social media platform that celebrates Bengali culture and connects the Bengali community across the globe. Share your stories, explore rich traditions, connect with fellow Bengalis, and keep the beautiful Bengali heritage alive in the digital age.

### 🎯 Key Features

- **📖 Cultural Feed**: Share and discover Bengali culture, traditions, and stories
- **💬 Real-time Messaging**: Connect with community members instantly
- **📸 Photo Sharing**: Share beautiful moments with custom privacy settings
- **⭐ Favorites**: Save and organize your favorite posts
- **🔍 Smart Search**: Find content, people, and trending Bengali topics
- **👤 Rich Profiles**: Showcase your Bengali identity and interests
- **🎨 Beautiful UI**: Culturally-inspired design with modern aesthetics

## 🖼️ Screenshots

| Onboarding | Home Feed | Messages | Profile |
|------------|-----------|----------|---------|
| ![Onboarding](screenshots/onboarding.png) | ![Home](screenshots/home.png) | ![Messages](screenshots/messages.png) | ![Profile](screenshots/profile.png) |

| Search | Create Post | Favorites | Settings |
|--------|-------------|-----------|----------|
| ![Search](screenshots/search.png) | ![Create Post](screenshots/create_post.png) | ![Favorites](screenshots/favorites.png) | ![Settings](screenshots/settings.png) |

## 🏗️ Project Structure

```
lib/
├── 📁 config/
│   └── 🎨 colors.dart              # App color scheme and themes
├── 📁 screens/
│   ├── 📁 onboarding/              # Welcome and intro screens
│   │   ├── onboarding_screen.dart
│   │   └── 📁 widgets/
│   │       └── background.dart
│   ├── 📁 home/                    # Social feed and main content
│   │   ├── home_screen.dart
│   │   └── 📁 widgets/
│   │       └── background.dart
│   ├── 📁 message/                 # Chat and messaging
│   │   ├── message_screen.dart
│   │   └── 📁 widgets/
│   │       ├── message_background.dart
│   │       └── message_item.dart
│   ├── 📁 message_detail/          # Individual conversations
│   │   ├── message_detail_screen.dart
│   │   └── 📁 widgets/
│   │       └── message_detail_background.dart
│   ├── 📁 profile/                 # User profiles and stats
│   │   ├── profile_screen.dart
│   │   └── 📁 widgets/
│   │       ├── profile_background.dart
│   │       └── stat.dart
│   ├── 📁 favorites/               # Saved posts and content
│   │   ├── favorites_screen.dart
│   │   └── 📁 widgets/
│   │       └── favorites_background.dart
│   ├── 📁 search/                  # Search and discovery
│   │   └── search_screen.dart
│   ├── 📁 create_post/             # Content creation
│   │   └── create_post_screen.dart
│   ├── 📁 settings/                # App preferences
│   │   └── settings_screen.dart
│   ├── 📁 nav/                     # Bottom navigation
│   │   └── nav.dart
│   └── 📁 widgets/                 # Reusable components
│       ├── custom_button.dart
│       └── profile_image.dart
└── 📄 main.dart                    # App entry point
```

## 🚀 Getting Started

### Prerequisites

Before you begin, ensure you have the following installed:

- [Flutter SDK](https://flutter.dev/docs/get-started/install) (3.x or higher)
- [Dart SDK](https://dart.dev/get-dart) (3.x or higher)
- [Android Studio](https://developer.android.com/studio) or [VS Code](https://code.visualstudio.com/)
- [Git](https://git-scm.com/)

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/yourusername/bangali-app.git
   cd bangali-app
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Run the app**
   ```bash
   flutter run
   ```

### Building for Production

#### Android APK
```bash
flutter build apk --release
```
The APK will be generated at: `build/app/outputs/flutter-apk/app-release.apk`

#### iOS (macOS only)
```bash
flutter build ios --release
```

## 📦 Dependencies

### Core Dependencies
```yaml
dependencies:
  flutter:
    sdk: flutter
  google_fonts: ^6.1.0              # Beautiful typography
  flutter_svg: ^1.1.1+1             # SVG icon support
  flutter_staggered_grid_view: ^0.6.2  # Grid layouts
  intl: ^0.17.0                      # Internationalization
  cupertino_icons: ^1.0.2           # iOS-style icons
```

### Dev Dependencies
```yaml
dev_dependencies:
  flutter_test:
    sdk: flutter
  flutter_lints: ^2.0.0             # Code quality
```

## 🎨 Design System

### Color Palette
- **Primary**: `#25A0B0` (Teal)
- **Secondary**: `#E1F6F4` (Light Teal)
- **Accent**: `#F5C8C6` (Light Pink)
- **Background**: `#FFFFFF` (White)
- **Text**: `#000000` (Black)
- **Caption**: `#656565` (Gray)

### Typography
- **Font Family**: Poppins (Google Fonts)
- **Styles**: Display Large, Display Medium, Display Small, Headline Small, Body Large, Body Small, Label Small

### Design Principles
- **Cultural Authenticity**: Bengali-inspired design elements
- **Modern Aesthetics**: Clean, contemporary UI/UX
- **Accessibility**: High contrast and readable fonts
- **Responsiveness**: Optimized for all screen sizes

## 🌟 Features in Detail

### 📱 Onboarding Experience
- **3-page introduction** to Bangali community
- **Smooth animations** and transitions
- **Cultural theming** with Bengali elements
- **Progressive navigation** with custom buttons

### 🏠 Home Feed
- **Story circles** for quick updates
- **Interactive posts** with like, comment, share
- **Beautiful card layouts** with image support
- **Real-time updates** and refreshing

### 💬 Messaging System
- **Chat list** with search functionality
- **Individual conversations** with bubble design
- **Message composition** with emoji support
- **Online status** indicators

### 👤 User Profiles
- **Custom profile images** with unique clipping
- **Statistics display** (posts, followers, following)
- **Photo gallery** with staggered grid layout
- **Tab switching** between photos and saved content

### ⭐ Favorites & Collections
- **Save posts** for later viewing
- **Category organization** for easy browsing
- **Beautiful grid layouts** with overlay information
- **Quick access** to saved content

### 🔍 Search & Discovery
- **Recent searches** history
- **Trending topics** in Bengali community
- **Category exploration** (Culture, Food, Art, Music)
- **Smart filtering** and suggestions

### ✏️ Content Creation
- **Photo upload** functionality
- **Caption writing** with formatting
- **Location tagging** for posts
- **Privacy settings** (Public/Friends only)

### ⚙️ Settings & Preferences
- **Profile management** and editing
- **Privacy controls** and account settings
- **Notification preferences** with toggles
- **Dark mode** support (coming soon)
- **About and help** sections

## 🛠️ Technical Architecture

### State Management
- **StatefulWidget** for local state
- **Provider pattern** ready for scaling
- **Clean separation** of concerns

### Navigation
- **Named routes** for better organization
- **Material page routes** with transitions
- **Deep linking** support ready

### Performance
- **Tree-shaking** for optimized builds
- **Image optimization** and caching
- **Lazy loading** for better performance

## 🤝 Contributing

We welcome contributions from the Bengali community and Flutter developers!

### How to Contribute

1. **Fork the repository**
2. **Create a feature branch**
   ```bash
   git checkout -b feature/amazing-feature
   ```
3. **Commit your changes**
   ```bash
   git commit -m 'Add some amazing feature'
   ```
4. **Push to the branch**
   ```bash
   git push origin feature/amazing-feature
   ```
5. **Open a Pull Request**

### Contribution Guidelines

- Follow the existing code style and patterns
- Add comments for complex logic
- Update documentation for new features
- Test your changes thoroughly
- Respect Bengali cultural elements in design

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

- **Bengali Community** for inspiration and cultural guidance
- **Flutter Team** for the amazing framework
- **Google Fonts** for beautiful typography
- **SVG Icons** from various open-source contributors

## 📞 Support & Contact

- **Issues**: [GitHub Issues](https://github.com/yourusername/bangali-app/issues)
- **Discussions**: [GitHub Discussions](https://github.com/yourusername/bangali-app/discussions)
- **Email**: support@bangali-app.com

## 🚀 Roadmap

### Upcoming Features
- [ ] 🌙 Dark mode theme
- [ ] 🔔 Push notifications
- [ ] 🎵 Audio message support
- [ ] 📱 Stories feature
- [ ] 🌐 Multi-language support (Bengali/English)
- [ ] 🔐 Advanced privacy controls
- [ ] 📊 Analytics dashboard
- [ ] 🎨 Custom themes

---

<div align="center">

**Made with ❤️ for the Bengali Community**


</div>
