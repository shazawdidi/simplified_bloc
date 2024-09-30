import 'package:flutter_test/flutter_test.dart';
import 'package:simplified_bloc/simplified_bloc.dart'; // Make sure this matches the path

void main() {
  group('SimpleCubit', () {
    late SimpleCubit<String> cubit;

    setUp(() {
      cubit = SimpleCubit<String>();
    });

    test('initial state is empty', () {
      expect(cubit.state, isEmpty);
    });

    test('adds entity', () {
      cubit.addEntity('Task 1');
      expect(cubit.state, ['Task 1']);
    });

    test('removes entity', () {
      cubit.addEntity('Task 1');
      cubit.removeEntity(0);
      expect(cubit.state, isEmpty);
    });

    test('clears entities', () {
      cubit.addEntity('Task 1');
      cubit.clearEntities();
      expect(cubit.state, isEmpty);
    });
  });
}
