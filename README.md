# Flutter Counter App with Clean Architecture

A Flutter application demonstrating Clean Architecture principles with a simple counter implementation using BLoC pattern for state management.

## Features

- Increment/decrement counter
- Clean Architecture implementation
- BLoC state management
- Dependency injection using GetIt

## Project Structure

```
lib/
├── data/
│   └── repositories/
│       └── counter_repository_impl.dart
├── domain/
│   ├── entities/
│   │   └── counter.dart
│   └── repositories/
│       └── counter_repository.dart
├── presentation/
│   ├── bloc/
│   │   └── counter_bloc.dart
│   └── pages/
│       └── counter_page.dart
├── injection_container.dart
└── main.dart
```

## Prerequisites

- Flutter SDK (>=2.19.0)
- Dart SDK (>=2.19.0)

## Installation

1. Clone the repository:
```bash
git clone https://github.com/devang-tailor/cleanarcwithbloc.git
cd cleanarcwithbloc
```

2. Install dependencies:
```bash
flutter pub get
```

3. Run the app:
```bash
flutter run
```

## Dependencies

- flutter_bloc: ^8.1.3
- get_it: ^7.6.0

## Architecture

This project follows Clean Architecture principles:

- **Domain Layer**: Contains business logic and entities
- **Data Layer**: Implements repositories and data sources
- **Presentation Layer**: Contains UI and BLoC state management

## Contributing

1. Fork the repository
2. Create a new branch
3. Make your changes
4. Submit a pull request

## License

This project is licensed under the MIT License - see the LICENSE file for details.
