# 👟 Stepz Store

![Status](https://img.shields.io/badge/Status-In%20Development-orange?style=for-the-badge)
![Platform](https://img.shields.io/badge/Platform-Android%20%7C%20iOS%20%7C%20Web%20%7C%20Desktop-blueviolet?style=for-the-badge)
![License](https://img.shields.io/badge/License-Unlicensed-lightgrey?style=for-the-badge)

![Framework](https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white)
![Language](https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white)
![State Management](https://img.shields.io/badge/State%20Management-Provider-13B9FD?style=for-the-badge&logo=flutter&logoColor=white)



## 📌 About The Project

**Stepz Store** is a Flutter-based shoe store app that lets users browse a shoe catalog, filter by brand, view product details, pick a size, and manage a shopping cart , all powered by local **Provider** state management.

This repository is a **work in progress** and is being actively built out. Core shopping flows already work end-to-end; more features (persistence, checkout, backend, auth) are on the roadmap below.

> [!IMPORTANT]
>- **Work In Progress:** The structure and code in this repository are actively changing. Build instructions and public documentation will be updated as the app approaches a stable initial release.



<img src="https://github.com/ShehanSulakshana/ShehanSulakshana/blob/main/ProjectAssets/Stepz-Store-Repo-Banner.jpg"alt="Stepz Store Banner"/>


---

## ✨ Features

### ✅ Currently Implemented
- 🏬 **Product Catalog** — Browse a list/grid of shoes with adaptive layout (list view on narrow screens, grid view on wide screens)
- 🏷️ **Brand Filtering** — Quick-filter chips for `All`, `Adidas`, `Nike`, and `Bata`
- 🔍 **Product Details** — Dedicated details page with product image, price, and size selection
- 📏 **Size Selection** — Tap-to-select available sizes per product
- 🛒 **Add to Cart** — Add a product (with chosen size) to the cart, with validation and confirmation feedback
- ❌ **Remove from Cart** — Remove items from the cart with a confirmation dialog
- 📱 **Responsive UI** — Layout adapts between mobile and wider/desktop viewports
- 🔄 **State Management** — Cart state handled locally via `Provider` / `ChangeNotifier`
- 🖥️ **Multi-Platform Ready** — Configured to run on Android, iOS, Web, Windows, macOS, and Linux

### 🚧 Planned / In Progress
- 🔎 Functional product search
- 💾 Persistent cart storage (local database)
- 🔐 User authentication
- ☁️ Backend / API integration for real product data
- 💳 Checkout & order flow
- ❤️ Wishlist / favorites
- 🎨 UI polish and theming refinements

---

## 🛠️ Tech Stack

| Category | Technology |
|---|---|
| Framework | [Flutter](https://flutter.dev) |
| Language | [Dart](https://dart.dev) |
| State Management | [Provider](https://pub.dev/packages/provider) |
| Icons | Cupertino Icons |

---

## 📂 Project Structure

```
lib/
├── main.dart                    # App entry point & theme setup
├── global_variables.dart        # Static product catalog data
├── providers/
│   └── cart_provider.dart       # Cart state management (add/remove)
├── pages/
│   ├── home_page.dart           # Bottom nav shell (Products / Cart)
│   ├── product_list.dart        # Product listing with brand filters
│   ├── product_details_page.dart# Product details & size/add-to-cart
│   └── cart_page.dart           # Cart view with remove functionality
└── widgets/
    └── product_card.dart        # Reusable product card UI
```

---

## 🚀 Getting Started

### Prerequisites
- [Flutter SDK](https://docs.flutter.dev/get-started/install) (`^3.10.3` Dart SDK or later)
- An emulator/simulator, connected device, or a web browser

"Home Screen"/>

---

## 🔒 Copyright & Intellectual Property

> **Note:** Although this repository is hosted publicly for visibility and portfolio showcase, **TrueNote is proprietary software and NOT open-source.**

- **No Permitted Use:** You may not clone, copy, modify, distribute, publish, or sublicense any part of this codebase.
- **No Contributions:** Pull requests and contributions are not being accepted at this stage.

All rights reserved © Shehan Sulakshana.

---

## 🌐 Connect
- **LinkedIn:** [Shehan Sulakshana](https://linkedin.com/in/shehan-sulakshana)
- **Portfolio:** [https://shehan-sulakshana.is-a.dev](#)

> For inquiries regarding this project, feel free to reach the developer.