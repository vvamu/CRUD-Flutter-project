import 'package:one/domain/interfaces/AbstractEntity.dart';

class Ingridient extends AbstractEntity {
  final int id;
  String name = "Default Ingridient";
  final String? description;
  final int ccal;
  final bool IsDeleted;

  Ingridient(
      {required this.id,
      required this.name,
      required this.description,
      required this.ccal,
      required this.IsDeleted});
}
