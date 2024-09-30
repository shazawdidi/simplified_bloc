import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simplified_bloc/src/simple_state.dart';

/// A Cubit to manage the SimpleState of entities.
class SimpleCubit<T> extends Cubit<SimpleState<T>> {
  /// Initializes the Cubit with an empty SimpleState.
  SimpleCubit() : super(SimpleState([]));

  /// Adds a new entity to the state.
  void addEntity(T entity) {
    emit(state
        .addEntity(entity)); // Emit a new SimpleState with the added entity
  }

  /// Removes an entity from the state by its index.
  void removeEntity(int index) {
    emit(state.removeEntity(
        index)); // Emit a new SimpleState without the removed entity
  }

  /// Clears all entities from the state.
  void clearEntities() {
    emit(state.clear()); // Emit a new SimpleState that is empty
  }
}
