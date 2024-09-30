import 'package:flutter_bloc/flutter_bloc.dart';

/// A simplified Cubit to manage a list of entities in a BLoC pattern.
class SimpleCubit<T> extends Cubit<List<T>> {
  /// Initializes the Cubit with an empty list.
  SimpleCubit() : super([]);

  /// Adds a new entity to the list.
  void addEntity(T entity) {
    emit([...state, entity]); // Emit a new state with the added entity
  }

  /// Removes an entity from the list by its index.
  void removeEntity(int index) {
    if (index >= 0 && index < state.length) {
      emit([...state]
        ..removeAt(index)); // Emit a new state without the removed entity
    }
  }

  /// Clears all entities from the list.
  void clearEntities() {
    emit([]); // Emit an empty list as the new state
  }
}
