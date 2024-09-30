/// A simple state class to manage a list of entities.
class SimpleState<T> {
  final List<T> entities;

  /// Creates a SimpleState with the given entities.
  SimpleState(this.entities);

  /// Returns a new SimpleState with the added entity.
  SimpleState<T> addEntity(T entity) {
    return SimpleState([...entities, entity]);
  }

  /// Returns a new SimpleState with the entity removed at the given index.
  SimpleState<T> removeEntity(int index) {
    if (index >= 0 && index < entities.length) {
      final updatedEntities = List<T>.from(entities)..removeAt(index);
      return SimpleState(updatedEntities);
    }
    return this; // Return current state if index is out of bounds
  }

  /// Returns a new SimpleState with all entities cleared.
  SimpleState<T> clear() {
    return SimpleState([]); // Return an empty state
  }
}
