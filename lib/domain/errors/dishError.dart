abstract class DishError {
  static void getErrorMaxIngridientsCount(int maxIngridients) {
    throw Exception("Dish can`t contain more than ${maxIngridients}");
  }
}
