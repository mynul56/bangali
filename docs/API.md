# API Documentation

## Project Architecture

### 📁 Folder Structure

```
lib/
├── config/
│   └── colors.dart                 # Color constants and theme definitions
├── screens/
│   ├── onboarding/
│   │   ├── onboarding_screen.dart  # Welcome screens with page view
│   │   └── widgets/
│   │       └── background.dart     # Custom onboarding background
│   ├── home/
│   │   ├── home_screen.dart        # Main social feed
│   │   └── widgets/
│   │       └── background.dart     # Home screen background
│   ├── message/
│   │   ├── message_screen.dart     # Chat list and search
│   │   └── widgets/
│   │       ├── message_background.dart  # Chat background
│   │       └── message_item.dart        # Individual chat item
│   ├── message_detail/
│   │   ├── message_detail_screen.dart   # Individual conversation
│   │   └── widgets/
│   │       └── message_detail_background.dart
│   ├── profile/
│   │   ├── profile_screen.dart     # User profile and stats
│   │   └── widgets/
│   │       ├── profile_background.dart  # Profile background
│   │       └── stat.dart               # Statistics widget
│   ├── favorites/
│   │   ├── favorites_screen.dart   # Saved posts
│   │   └── widgets/
│   │       └── favorites_background.dart
│   ├── search/
│   │   └── search_screen.dart      # Search and discovery
│   ├── create_post/
│   │   └── create_post_screen.dart # Post creation
│   ├── settings/
│   │   └── settings_screen.dart    # App settings
│   ├── nav/
│   │   └── nav.dart               # Bottom navigation
│   └── widgets/
│       ├── custom_button.dart     # Reusable button component
│       └── profile_image.dart     # Profile image widget
└── main.dart                      # App entry point
```

## 🎨 Design System

### Colors (`config/colors.dart`)
```dart
const kBlack = Color(0xFF000000);           // Primary text
const kWhite = Color(0xFFFFFFFF);           // Background
const k1Gray = Color(0xFF4E4E4E);           // Secondary text
const k1LightGray = Color(0xFFC4C4C4);     // Placeholders
const k2AccentStroke = Color(0xFF25A0B0);   // Primary accent
const k2MainThemeColor = Color(0xFFE1F6F4); // Background accent
const k3Pink = Color(0xFFF5C8C6);          // Accent highlights
const k3AccentLines = Color(0xFFEEF2E2);   // Border colors
const kCaption = Color(0xFF656565);         // Caption text
const kSelectedTabColor = Color(0xFF7DB9B3); // Selected states
```

### Typography
- **Font**: Poppins (Google Fonts)
- **Sizes**: 39px (Title), 31.25px (H1), 25px (H2), 20px (H3), 16px (Body), 14px (Small), 12.8px (Caption)

## 🧩 Key Components

### Custom Button (`widgets/custom_button.dart`)
Reusable button with rotation effects and consistent styling.

### Profile Image (`widgets/profile_image.dart`)
Circular profile image with border and custom radius support.

### Stat Widget (`profile/widgets/stat.dart`)
Displays formatted statistics with title and value.

### Background Widgets
Each screen has a custom background with geometric patterns and cultural theming.

## 📱 Screen Specifications

### Onboarding Screen
- **Purpose**: Welcome new users with 3-page introduction
- **Features**: Page indicators, smooth transitions, cultural content
- **Navigation**: Proceeds to main navigation

### Home Screen
- **Purpose**: Main social feed with posts and stories
- **Features**: Story circles, post cards, interactions
- **Components**: Custom background, post items, story view

### Message Screens
- **Purpose**: Chat functionality with list and detail views
- **Features**: Search, message bubbles, online status
- **Components**: Message items, background patterns

### Profile Screen
- **Purpose**: User profile with stats and photo gallery
- **Features**: Statistics display, photo grid, tab switching
- **Components**: Custom image clipper, staggered grid

### Favorites Screen
- **Purpose**: Saved posts and collections
- **Features**: Grid layout, category organization
- **Components**: Staggered grid, overlay information

### Search Screen
- **Purpose**: Content and user discovery
- **Features**: Recent searches, trending topics, categories
- **Components**: Search bar, topic chips, category cards

### Create Post Screen
- **Purpose**: Content creation interface
- **Features**: Photo upload, captions, privacy settings
- **Components**: Image picker, text fields, privacy toggles

### Settings Screen
- **Purpose**: App preferences and account management
- **Features**: Profile settings, toggles, logout
- **Components**: Setting tiles, switches, dialogs

## 🔄 Navigation Flow

```
Onboarding → Main Navigation (Bottom Tabs)
├── Home (Tab 1)
├── Messages (Tab 2) → Message Detail
├── Favorites (Tab 3) → Search
└── Profile (Tab 4) → Settings

Floating Action Button → Create Post
```

## 🎯 State Management

Currently using built-in StatefulWidget for local state management. Ready for scaling with:
- Provider pattern
- Bloc pattern
- Riverpod

## 📦 Dependencies Overview

### Production Dependencies
- `google_fonts`: Typography and font loading
- `flutter_svg`: SVG icon rendering
- `flutter_staggered_grid_view`: Advanced grid layouts
- `intl`: Number formatting and internationalization

### Development Dependencies
- `flutter_lints`: Code quality and standards
- `flutter_test`: Unit and widget testing

## 🚀 Build Configuration

### Android
- **Target SDK**: 34
- **Minimum SDK**: 21
- **Build Type**: Release optimized
- **Size**: ~21.5MB (optimized with tree-shaking)

### Performance Optimizations
- Tree-shaking for icons (99%+ size reduction)
- Image optimization
- Lazy loading for grids
- Efficient widget rebuilding

---

This documentation serves as a reference for developers working on the Bangali app. For specific implementation details, refer to the individual Dart files.
