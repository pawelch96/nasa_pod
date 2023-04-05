# NASA Picture of the Day

A Flutter project presenting [NASA Picture of the Day](https://apod.nasa.gov/apod/astropix.html) for a randomly chosen day.<br>

### Table of contents

- [Getting started](#1)
- [Code generators](#2)
- [Application architecture](#3)

## Getting started <a name ="1"></a>

This application is based on [NASA Open APIs](https://api.nasa.gov/). To use it, generate your API KEY which could be then used in the app.

## Code generators <a name ="2"></a>

This project uses several plugins to generate code, such as [json_serializable](https://pub.dev/packages/json_serializable), [freezed](https://pub.dev/packages/freezed), [retrofit_generator](https://pub.dev/packages/retrofit_generator), and [injectable_generator](https://pub.dev/packages/injectable_generator). To generate these files, run:

```dart
flutter packages pub run build_runner build --delete-conflicting-outputs
```

or to rebuild generated files continuously during development:

```dart
flutter packages pub run build_runner watch --delete-conflicting-outputs
```

Localization is generated in Visual Studio Code, with the help of [Flutter Intl](https://marketplace.visualstudio.com/items?itemName=localizely.flutter-intl) extension. Thanks to it, there is no need to run

```dart
flutter gen-l10n
```

after every change in `arb` files.<br>

## Application architecture <a name ="3"></a>

The application shows a preview of an interpretation of [Uncle Bob's Clean Architecture](https://blog.cleancoder.com/uncle-bob/2012/08/13/the-clean-architecture.html).<br>
It consists of several layers:<br>

1. Domain layer<br>
   The domain layer is the inner layer containing the app's business logic and abstractions.<br>
2. Application layer<br>
   The application layer holds state management logic, in this example based on [BLoC](https://bloclibrary.dev/#/). The logic here is only connected with the presentation layer and users' interactions, with no data-related computations. Mostly just state managers distributing tasks to `UseCase` from the domain layer.<br>
3. Data layer <br>
   This layer implements repositories from the domain layer. Errors and exceptions are handled there. In addition, there is an implementation of data sources, such as Rest APIs or
   local DBs. There are also JSON parsers and models, which are further converted by mappers to entities.<br>
4. Presentation layer <br>
All pages, widgets, and navigation are kept in the presentation layer. It is
the “dumbest” layer, containing only the UI (even without form validation which is handled in the ppplication layer). Depends completely on the Flutter framework.<br>
<p>The project structure is feature-based, meaning that each feature contains the whole architecture inside its folder. If there are any components or logic that are used throughout the app, there's a `core` folder holding these reusable code pieces.
