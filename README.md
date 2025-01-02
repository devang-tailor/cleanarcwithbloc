# Flutter Counter App with Clean Architecture

A Flutter application demonstrating Clean Architecture principles with a simple counter implementation using BLoC pattern for state management.

## Table of Contents
- [Features](#features)
- [Project Structure](#project-structure)
- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Architecture](#architecture)
- [State Management](#state-management)
- [Testing](#testing)
- [Dependencies](#dependencies)
- [Contributing](#contributing)
- [License](#license)

## Features

- Increment/decrement counter functionality
- Clean Architecture implementation with Use Cases
- BLoC pattern for state management
- Dependency injection using GetIt
- Separation of concerns
- Unit testable architecture
- Scalable project structure

## Project Structure

```
lib/
├── data/
│   └── repositories/
│       └── counter_repository_impl.dart
├── domain/
│   ├── entities/
│   │   └── counter.dart
│   ├── repositories/
│   │   └── counter_repository.dart
│   └── usecases/
│       ├── get_counter.dart
│       ├── increment_counter.dart
│       └── decrement_counter.dart
├── presentation/
│   ├── bloc/
│   │   └── counter_bloc.dart
│   └── pages/
│       └── counter_page.dart
├── injection_container.dart
└── main.dart
```

## Prerequisites

Before you begin, ensure you have met the following requirements:
- Flutter SDK (>=2.19.0)
- Dart SDK (>=2.19.0)
- An IDE (VS Code, Android Studio, or IntelliJ)
- Git for version control

## Installation

1. Clone the repository:
```bash
git clone https://github.com/devang-tailor/cleanarcwithbloc.git
```

2. Navigate to the project directory:
```bash
cd cleanarcwithbloc```

3. Install dependencies:
```bash
flutter pub get
```

4. Run the app:
```bash
flutter run
```

## Architecture

This project follows Clean Architecture principles, divided into three main layers:

### Domain Layer
- The innermost layer, containing the core business logic
- Components:
    - **Entities**: Core business objects (Counter)
    - **Repositories**: Abstract definitions of data operations
    - **Use Cases**: Single-responsibility business logic units
        - GetCounter: Retrieves current counter value
        - IncrementCounter: Increases counter by one
        - DecrementCounter: Decreases counter by one

### Data Layer
- Implements repository interfaces from the domain layer
- Handles data operations and external data sources
- Contains repository implementations

### Presentation Layer
- The outermost layer, handling UI and state management
- Implements BLoC pattern for state management
- Contains UI components and pages

## State Management

The app uses the BLoC (Business Logic Component) pattern for state management:

- **Events**: Actions that can be performed (Increment/Decrement)
- **States**: Current state of the counter
- **BLoC**: Handles business logic and state transitions

## Testing

To run tests:
```bash
flutter test
```

Testing structure:
- Unit tests for use cases
- Unit tests for repositories
- BLoC tests for state management
- Widget tests for UI components

## Dependencies

Main dependencies used in the project:

```yaml
dependencies:
  flutter:
    sdk: flutter
  flutter_bloc: ^8.1.3
  get_it: ^7.6.0

dev_dependencies:
  flutter_test:
    sdk: flutter
  flutter_lints: ^2.0.0
```

## Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

### Contribution Guidelines
- Write clear, descriptive commit messages
- Update documentation as needed
- Add tests for new features
- Ensure all tests pass before submitting PR
- Follow the existing coding style and patterns

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Acknowledgments

- Flutter team for the amazing framework
- BLoC library contributors
- Clean Architecture community

---

For questions and support, please open an issue in the repository.