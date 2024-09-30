# Simplified BLoC

**A simplified state management library for Flutter, inspired by the BLoC pattern.**

## Features

- Easy to use and integrate with existing Flutter applications.
- Provides a clear separation of business logic from the UI.
- Lightweight and focused on simplicity.

## Getting Started

To use `simplified_bloc`, ensure you have Flutter installed on your machine.
You can find installation instructions on the [Flutter official website](https://flutter.dev/docs/get-started/install).

### Installation

Add `simplified_bloc` as a dependency in your `pubspec.yaml` file:

```yaml
dependencies:
  flutter:
    sdk: flutter
  simplified_bloc: ^1.0.0  # Check for the latest version on pub.dev 
``` 
Run the following command to install the package:
 ``` flutter pub get  ```

Usage
Creating a Simple BLoC
  1- Define the Events:
``` flutter pub get  ```
  2- Create the BLoC:
``` import 'package:simplified_bloc/simplified_bloc.dart';

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0);

  @override
  Stream<int> mapEventToState(CounterEvent event) async* {
    switch (event) {
      case CounterEvent.increment:
        yield state + 1;
        break;
      case CounterEvent.decrement:
        yield state - 1;
        break;
    }
  }
}
  ```
3- Using the BLoC in Your Widget::
``` import 'package:flutter/material.dart';
import 'package:simplified_bloc/simplified_bloc.dart';

class CounterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterBloc(),
      child: Scaffold(
        appBar: AppBar(title: Text('Counter')),
        body: BlocBuilder<CounterBloc, int>(
          builder: (context, count) {
            return Center(child: Text('Count: $count'));
          },
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: () => context.read<CounterBloc>().add(CounterEvent.increment),
              tooltip: 'Increment',
              child: Icon(Icons.add),
            ),
            SizedBox(height: 10),
            FloatingActionButton(
              onPressed: () => context.read<CounterBloc>().add(CounterEvent.decrement),
              tooltip: 'Decrement',
              child: Icon(Icons.remove),
            ),
          ],
        ),
      ),
    );
  }
}
 ```


## Comparison with Original BLoC

While the original BLoC (Business Logic Component) library is a powerful tool for state management in Flutter, `simplified_bloc` aims to streamline its use by reducing boilerplate code and enhancing ease of integration. Here are some key differences:

| Feature                | Original BLoC                       | Simplified BLoC                      |
|------------------------|-------------------------------------|--------------------------------------|
| **Boilerplate Code**   | Requires more boilerplate setup.   | Minimal boilerplate for easier setup. |
| **State Management**   | Utilizes `Stream` and `Sink` for events and states. | Uses a simplified `Bloc` class with a clear event-to-state mapping. |
| **Learning Curve**     | Steeper learning curve for newcomers. | Designed to be beginner-friendly and easier to understand. |
| **Flexibility**        | Highly flexible for complex apps.  | Focuses on simplicity and quick integration for smaller applications. |
| **Testing**            | Requires setting up additional test cases for streams. | Simplified testing approach with straightforward state management. |
| **Documentation**      | Comprehensive but can be overwhelming. | Focused documentation with examples aimed at beginners. |

### Conclusion

`Simplified BLoC` is ideal for developers who want to implement state management quickly and easily, especially for smaller projects or when learning Flutter. For larger applications requiring complex state management, the original BLoC may still be the preferred choice due to its flexibility and extensive features.
