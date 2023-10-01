import 'package:one/domain/interfaces/IEntity.dart';

abstract class AbstractEntity implements IEntity {
  late int id;
  bool IsDeleted = false;
}
