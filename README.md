---

# Flutter Counter App using BLoC Pattern

This is a simple counter app built using the [Flutter framework](https://flutter.dev) and the [BLoC package](https://bloclibrary.dev). The app demonstrates the implementation of the BLoC pattern to manage the state of the counter efficiently, ensuring separation of concerns between the UI and business logic.

## Table of Contents

- [Overview](#overview)
- [Features](#features)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
- [App Architecture](#app-architecture)
- [Technologies Used](#technologies-used)
- [Usage](#usage)
- [Resources](#resources)
- [License](#license)

## Overview

The **Flutter Counter App** is a simple project used to demonstrate state management using the BLoC (Business Logic Component) pattern. In this app:

- Users can increment and decrement a counter.
- The state of the counter is managed by the BLoC, allowing the UI to remain separate from the business logic.

## Features

- **Increment and Decrement Counter**: The user can increase or decrease the counter by pressing the "+" and "-" buttons.
- **State Management using BLoC**: The app's state is managed using the BLoC pattern to ensure scalability and maintainability.
- **Flutter and BLoC Integration**: Shows how to integrate the BLoC pattern with Flutter's widgets to create reactive UI updates.

## Getting Started

Follow these instructions to get a copy of the project up and running on your local machine for development and testing.

### Prerequisites

Before you begin, ensure you have met the following requirements:

- Flutter SDK installed on your machine. You can follow the official [Flutter installation guide](https://flutter.dev/docs/get-started/install).
- Dart SDK (comes with Flutter).
- A code editor like [Visual Studio Code](https://code.visualstudio.com/) or [Android Studio](https://developer.android.com/studio) with Flutter and Dart plugins installed.

### Installation

1. **Clone the repository**:

   ```bash
   git clone https://github.com/jadiel-bett/counter_bloc.git
   cd counter_bloc
   ```

2. **Install dependencies**:
   Install the required dependencies by running:

   ```bash
   flutter pub get
   ```

3. **Run the app**:
   To launch the app on your preferred device or emulator, use:
   ```bash
   flutter run
   ```

## App Architecture

This project follows the **BLoC architecture**, a reactive state management approach for Flutter applications. The app is split into three main components:

- **Presentation (UI)**: Contains the `CounterScreen` that reacts to state changes.
- **Business Logic**: Managed by `CounterBloc`, which handles the events and states related to the counter.
- **State**: A reactive stream of data that updates the UI based on the counter's state.

### Folder Structure

```
lib/
│
├── bloc/
│   ├── counter_bloc.dart    # Contains the Bloc class that manages events and states
│   ├── counter_event.dart   # Defines the events (increment, decrement) for the counter
│   └── counter_state.dart   # Defines the states (current count) of the counter
│
├── main.dart                # App entry point
└── ui/
    └── counter_screen.dart  # UI for the counter, listening to Bloc state
```

### Counter BLoC

- **Events**: `IncrementEvent`, `DecrementEvent`
- **States**: `CounterState` (holds the counter value)

The `CounterBloc` listens to incoming events and updates the state accordingly, allowing the UI to react to these state changes.

## Technologies Used

- **Flutter**: Framework used to build the app's UI.
- **Dart**: Programming language used for Flutter apps.
- **BLoC**: Package used to implement the BLoC pattern for state management.

## Usage

- Launch the app.
- Use the "+" button to increment the counter.
- Use the "-" button to decrement the counter.
- Observe how the UI updates in real-time as the state changes via the BLoC pattern.

## Resources

- [Flutter Documentation](https://flutter.dev/docs)
- [BLoC Package Documentation](https://bloclibrary.dev/#/)
- [State Management in Flutter](https://flutter.dev/docs/development/data-and-backend/state-mgmt/intro)

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

---
