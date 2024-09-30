# simplified_bloc

`simplified_bloc` is a lightweight Flutter library that simplifies state management by providing an easy-to-use cubit structure. It allows developers to manage state with minimal boilerplate code while maintaining flexibility for various data types.

## Features
- Generic state management for any data type.
- Simple API for adding, removing, and clearing entities.
- Reduced complexity compared to traditional BLoC implementations.

## Getting Started

### Installation
Add `simplified_bloc` to your `pubspec.yaml`:

```yaml
dependencies:
  simplified_bloc: ^1.0.0
```
### Basic Usage Example
For a more detailed example demonstrating how to use the library, please visit our [GitHub repository](https://github.com/yourusername/simplified_bloc).

Here's a simple example to get you started:

```dart
import 'package:simplified_bloc/simplified_bloc.dart';

void main() {
  final cubit = EntityCubit<String>();
  cubit.addEntity('Task 1');
  cubit.addEntity('Task 2');
  cubit.removeEntity(0); // Removes 'Task 1'
  cubit.clearEntities(); // Clears all tasks
}




