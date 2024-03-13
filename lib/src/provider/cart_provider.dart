import 'package:cafe_park/src/model/CoffeeItemModel.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final cartProvider = StateProvider<List<CoffeeItemModel>>((ref) => []);
