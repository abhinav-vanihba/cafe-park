import 'package:cafe_park/src/model/CoffeeItemModel.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CartState extends StateNotifier<List<CoffeeItemModel>> {
  CartState() : super([]);

  void addItem(CoffeeItemModel item) {
    state = [...state, item];
  }

  void removeItem(CoffeeItemModel item) {
    state = List.from(state)..remove(item);
  }

  bool isItemInCart(CoffeeItemModel item) {
    return state.contains(item);
  }

  int getCount() {
    return state.length;
  }

  int getItemCount(CoffeeItemModel item) {
    return state.where((cartItem) => cartItem == item).length;
  }
}

final cartProvider = StateNotifierProvider<CartState, List<CoffeeItemModel>>(
    (ref) => CartState());
