# Taskia - Task Management App

A modern Flutter application for managing tasks with a clean, modular architecture.

## 🏗️ Project Structure

This project follows a **Clean Architecture** pattern with **Feature-based** organization:

```
lib/
├── core/                           # Core application layer
│   ├── app.dart                   # Main app widget
│   ├── config/
│   │   └── app_config.dart        # App configuration
│   └── theme/
│       └── app_theme.dart         # App theming
│
├── features/                       # Feature-based modules
│   ├── auth/                      # Authentication feature
│   │   ├── data/
│   │   │   ├── models/
│   │   │   │   └── user_model.dart
│   │   │   └── repositories/
│   │   │       └── auth_repository_impl.dart
│   │   ├── domain/
│   │   │   ├── entities/
│   │   │   │   └── user.dart
│   │   │   ├── repositories/
│   │   │   │   └── auth_repository.dart
│   │   │   └── usecases/
│   │   │       ├── login_usecase.dart
│   │   │       └── register_usecase.dart
│   │   └── presentation/
│   │       └── pages/
│   │           ├── login_page.dart
│   │           └── register_page.dart
│   │
│   └── dashboard/                 # Dashboard feature
│       └── presentation/
│           └── pages/
│               └── dashboard_page.dart
│
├── shared/                        # Shared components
│   ├── constants/
│   │   └── app_constants.dart     # App constants
│   ├── utils/
│   │   └── validators.dart        # Validation utilities
│   └── widgets/
│       ├── custom_button.dart     # Reusable button
│       └── custom_text_field.dart # Reusable text field
│
└── main.dart                      # App entry point
```

## 🎯 Architecture Principles

### Clean Architecture Layers

1. **Presentation Layer** (`presentation/`)
   - UI components (pages, widgets)
   - State management
   - User interactions

2. **Domain Layer** (`domain/`)
   - Business logic
   - Entities (core business objects)
   - Use cases (business rules)
   - Repository interfaces

3. **Data Layer** (`data/`)
   - Repository implementations
   - Data models
   - Data sources (API, local storage)

### Feature-based Organization

Each feature is self-contained with its own:
- Domain logic
- Data handling
- UI components
- Dependencies

## 🚀 Getting Started

### Prerequisites

- Flutter SDK (3.5.4 or higher)
- Dart SDK
- Android Studio / VS Code

### Installation

1. Clone the repository:
```bash
git clone <repository-url>
cd task_management
```

2. Install dependencies:
```bash
flutter pub get
```

3. Run the app:
```bash
flutter run
```

## 📱 Features

- **User Authentication**
  - Login/Register functionality
  - Form validation
  - Secure password handling

- **Dashboard**
  - Task overview
  - User profile
  - Navigation between features

- **Modern UI**
  - Material Design 3
  - Responsive layout
  - Dark/Light theme support

## 🛠️ Development

### Adding New Features

1. Create a new feature directory under `lib/features/`
2. Follow the clean architecture structure:
   ```
   feature_name/
   ├── data/
   ├── domain/
   └── presentation/
   ```

3. Implement the layers:
   - **Domain**: Entities, use cases, repository interfaces
   - **Data**: Models, repository implementations
   - **Presentation**: Pages, widgets, state management

### Code Style

- Follow Dart/Flutter conventions
- Use meaningful variable and function names
- Add comments for complex logic
- Keep functions small and focused

### Testing

- Unit tests for domain layer
- Widget tests for UI components
- Integration tests for features

## 📦 Dependencies

- **Flutter**: UI framework
- **Material Design**: UI components
- **Cupertino Icons**: iOS-style icons

## 🔧 Configuration

App configuration is centralized in:
- `lib/core/config/app_config.dart` - App settings
- `lib/shared/constants/app_constants.dart` - Constants

## 📄 License

This project is licensed under the MIT License.

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Add tests if applicable
5. Submit a pull request

## 📞 Support

For support and questions, please open an issue in the repository.
