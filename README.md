# ShopEase – Animated E-Commerce UI with Cart

![Flutter](https://img.shields.io/badge/Flutter-3.x-blue?logo=flutter)
![Dart](https://img.shields.io/badge/Dart-3.x-blue?logo=dart)
![Provider](https://img.shields.io/badge/State%20Management-Provider-purple)
![License](https://img.shields.io/badge/License-MIT-green)

A modern, animated e-commerce mobile application built with Flutter as part of **Week 05 Minor Project** (App Development).

The app focuses on beautiful UI, smooth animations, proper state management, and complete shopping cart functionality.

---

## Project Overview

ShopEase allows users to:
- Browse products by category
- View detailed product information
- Add / remove items from cart
- Increase / decrease quantity
- See real-time total price & item count
- Enjoy smooth animations throughout the app
- Switch between Light & Dark mode
- Persist cart data even after closing the app

---

## Features Implemented

### Core Features
- Home Screen with branding, categories & featured products
- Product Listing (GridView)
- Product Details Screen
- Fully functional Shopping Cart
- Responsive & mobile-friendly design

### Animations (≥ 3 required)
| Animation              | Implementation                        |
|------------------------|---------------------------------------|
| Hero Animation         | Product image → Detail screen         |
| Page Transitions       | Custom Fade + Slide                   |
| Scale Animation        | Add-to-Cart button press              |
| Staggered Grid         | Product cards appear with scale+fade  |
| AnimatedContainer      | Category chip selection               |

### Bonus Features
- Dark Mode (with persistence)
- Product Search bar (UI ready)
- Category Filters
- Modern colorful Material 3 design

---

## Technologies Used

- **Flutter** & **Dart**
- **Provider** – State Management
- **Google Fonts** (Poppins)
- **flutter_staggered_animations**
- **badges**
- **shared_preferences** – Local storage

### Flutter Concepts Demonstrated
- Stateless & Stateful Widgets
- Navigation & Routing
- ListView / GridView / CustomScrollView
- Custom Widgets
- State Management with Provider + setState
- Hero, AnimatedContainer, ScaleTransition, PageRouteBuilder

### Dart Concepts
- Classes & Objects
- Lists & Maps
- Functions
- State Handling
- Data Management (JSON-like local data + SharedPreferences)

---

## Project Structure
lib/
├── main.dart
├── models/
│   └── product.dart
├── providers/
│   ├── cart_provider.dart
│   └── theme_provider.dart
├── screens/
│   ├── home_screen.dart
│   ├── product_list_screen.dart
│   ├── product_detail_screen.dart
│   └── cart_screen.dart
├── widgets/
│   ├── product_card.dart
│   └── cart_badge.dart
└── data/
└── product_data.dart

## Installation Steps

1. **Clone the repository**
   bash
   git clone https://github.com/Shivesh187/shop_ease.git
   cd shop_ease

Install dependencies
Bash
flutter pub get

Run the app
Bash
flutter run
