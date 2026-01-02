# Scube Task

A Flutter application built by following the provided Figma design and interactive prototype. The project emphasizes pixel-accurate UI implementation, clean architecture, reusable widgets, and smooth user interactions, following Flutter best practices.

## Skills Used:
Flutter Bloc (Cubit), Clean Architecture, Flutter Hooks, GoRouter, Bash scripting for project structure generation, and responsive UI development based on Figma.

## Application Deployment Status:
[![Android Release](https://github.com/SakibvHossain/scube_tech_task/actions/workflows/android_release.yml/badge.svg)](https://github.com//SakibvHossain/scube_tech_task/actions/workflows/android_release.yml) 

## Architecture

The app follows **Clean Architecture** with a **feature-first folder structure**:

```text
lib/
├── app/
│   ├── app.dart
│   ├── router/
│   │   ├── app_router.dart
│   │   ├── app_router_name.dart
│   │   └── app_router_path.dart
│   └── theme/
│       ├── app_theme.dart
│       └── theme_cubit.dart
│
├── core/
│   ├── constants/
│   ├── error/
│   ├── network/
│   └── utils/
│
├── features/
│   └── auth/
│       ├── data/
│       │   ├── models/
│       │   ├── datasources/
│       │   └── repository/
│       ├── domain/
│       │   ├── entities/
│       │   ├── repository/
│       │   └── usecases/
│       │
│       └── presentation/
│           ├── bloc/
│           ├── pages/
│           └── widgets/
│
└── main.dart
````

## 🚀 How to Run the App

### Clone the repository

```bash
git clone <your-repo-url>
cd <project-folder>
```

### Install dependencies

```bash
flutter pub get
```

### Run (Development flavor)

```bash
flutter run
```

---

## 📦 Packages Used

| Package               | Purpose                                  |
| --------------------- | ---------------------------------------- |
| flutter_bloc          | State management (Bloc / Cubit)          |
| flutter_hooks         | Widget lifecycle & controller management |
| go_router             | Declarative navigation & routing         |
| equatable             | Value equality for Bloc states & events  |
| google_fonts          | Custom typography (Font integration)     |
| intl                  | Date & number formatting                 |
| shared_preferences    | Lightweight local persistence            |
| path_provider         | Access to device file system paths       |
| flutter_native_splash | Native splash screen configuration       |
| cupertino_icons       | iOS-style icons                          |

---

## 📸 Screenshots

<p align="center">
  <img src="https://github.com/user-attachments/assets/49a08414-27dd-46bf-9689-9c0252d07649" width="220"/>
  <img src="https://github.com/user-attachments/assets/3e2be932-b295-4814-8454-db7a21fefeea" width="220"/>
  <img src="https://github.com/user-attachments/assets/906dbf17-59f8-4f31-8bd1-101e01514a31" width="220"/>
</p>

<p align="center">
  <img src="https://github.com/user-attachments/assets/8c97d668-962f-41db-adfc-00fff2b588b8" width="220"/>
  <img src="https://github.com/user-attachments/assets/0b9400e9-8788-4b0f-bd26-b27081a86b3d" width="220"/>
  <img src="https://github.com/user-attachments/assets/dc8334df-c397-4f88-b4c3-dc3064e03dc8" width="220"/>
</p>

<p align="center">
  <img src="https://github.com/user-attachments/assets/a836bd6f-756d-4eda-a612-86fd2fa0c1d1" width="220"/>
  <img src="https://github.com/user-attachments/assets/f969f754-dc24-4fb1-b341-b9ad71d32f3d" width="220"/>
  <img src="https://github.com/user-attachments/assets/d757cb96-f00c-46b4-81f4-6d5fee3a5b55" width="220"/>
</p>

<p align="center">
  <img src="https://github.com/user-attachments/assets/2c2449b1-0c26-45ba-82df-55ec2c9741b5" width="220"/>
  <img src="https://github.com/user-attachments/assets/5c152497-3a1c-420c-8c08-448b876866be" width="220"/>
</p>

## Discord Result
<img width="686" height="229" alt="image" src="https://github.com/user-attachments/assets/f755dfd4-df32-4e55-b43f-4025fb573c72" />

Thank you for reviewing this assignment.
