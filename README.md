# 🍴 The Meal

A modern Flutter recipe application built with **Clean Architecture** and **BLoC/Cubit**, powered by the **TheMealDB API**.

The app allows users to discover recipes, search for meals, explore categories and cuisines, view detailed recipes, save favorites, plan meals, and manage a shopping list.

---

## 📱 Features

* 🏠 Home
* 🔍 Search Meals
* 🍽️ Meal Categories
* 🌍 Browse Meals by Area
* 🥘 Browse Meals by Ingredient
* 🎲 Random Meal
* 📖 Meal Details
* ❤️ Favorite Meals
* 📅 Meal Planner
* 🛒 Shopping List
* 💾 Local Data Persistence
* 🌐 REST API Integration
* ⚡ Loading & Error States
* 📱 Responsive UI

---

## 🛠️ Technologies

* **Flutter**
* **Dart**
* **BLoC / Cubit**
* **Dio**
* **GetIt**
* **Injectable**
* **Clean Architecture**
* **Hive**
* **REST API**

---

## 🏗️ Architecture

The project follows **Clean Architecture** and separates the application into three main layers:

```text
lib/
│
├── core/
│
├── feature/
│   └── meals/
│       ├── data/
│       ├── domain/
│       └── presentation/
│
└── main.dart
```

### Data Layer

Responsible for:

* API communication
* Models
* Data mapping
* Repository implementations

### Domain Layer

Responsible for:

* Entities
* Repository contracts
* Business logic abstractions

### Presentation Layer

Responsible for:

* UI
* Cubits
* States
* User interactions

---

## 🌐 API

This project uses **TheMealDB API**.

TheMealDB provides endpoints for searching meals, retrieving meal details, random meals, categories, areas, and filtering meals.

**API Documentation:**
https://www.themealdb.com/documentation

### Base URL

```text
https://www.themealdb.com/api/json/v1/1/
```

---

## 🔄 Application Flow

```text
UI
 │
 ▼
Cubit / BLoC
 │
 ▼
Repository
 │
 ▼
Data Source
 │
 ▼
Dio
 │
 ▼
TheMealDB API
```

---

## 🚀 Getting Started

### Clone the repository

```bash
git clone https://github.com/Mohamedd18/the_meal.git
```

### Navigate to the project

```bash
cd the_meal
```

### Install dependencies

```bash
flutter pub get
```

### Run the application

```bash
flutter run
```

---

## 📋 Project Management

The project is managed using **Jira**.

All development tasks, features, bugs, and project progress are organized and tracked through the Jira board.

### 🔗 Jira Board

👉 **[The Meal — Jira Board](https://elmhalawy858.atlassian.net/jira/software/projects/TM/boards/34?filter=&groupBy=none)**

### 🔗 GitHub Repository

👉 **[The Meal — GitHub](https://github.com/Mohamedd18/the_meal)**

---

## 📸 Screenshots

Screenshots will be added as the main features are completed.

| Home        | Search      |
| ----------- | ----------- |
| Coming Soon | Coming Soon |

| Meal Details | Favorites   |
| ------------ | ----------- |
| Coming Soon  | Coming Soon |

| Meal Planner | Shopping List |
| ------------ | ------------- |
| Coming Soon  | Coming Soon   |

---

## 🎯 Future Improvements

* [ ] Authentication
* [ ] User profiles
* [ ] Cloud synchronization
* [ ] Advanced meal recommendations
* [ ] Notifications
* [ ] Offline-first experience
* [ ] Dark Mode

---

## 👨‍💻 Author

**Mohamed Waleed Hassan**

Flutter Developer

* GitHub: https://github.com/Mohamedd18
* LinkedIn: https://linkedin.com/in/mohamed-waleed-490a27330

---

## 📄 Credits

Meal data and recipe information are provided by **TheMealDB**.

**TheMealDB Documentation:**
https://www.themealdb.com/documentation

---

## ⭐ Support

If you find this project useful, consider giving the repository a ⭐ on GitHub.
