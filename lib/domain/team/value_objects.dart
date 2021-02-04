import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';
import 'package:super_rugby_fantasy/domain/core/failures.dart';
import 'package:super_rugby_fantasy/domain/core/value_objects.dart';
import 'package:super_rugby_fantasy/domain/core/value_validators.dart';

class List15<T> extends ValueObject<KtList<T>> {
  @override
  final Either<ValueFailure<KtList<T>>, KtList<T>> value;

  static const maxLength = 6; // Only siz players for testing purposes

  factory List15(KtList<T> input) {
    assert(input != null);
    return List15._(
      validateMaxListLength(input, maxLength),
    );
  }

  const List15._(this.value);

  int get length {
    return value.getOrElse(() => emptyList()).size;
  }
}
