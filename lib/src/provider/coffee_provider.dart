import 'package:cafe_park/src/model/CoffeeItemModel.dart';
import 'dart:convert';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:flutter/services.dart';

part 'coffee_provider.g.dart';

@riverpod
Future<List<CoffeeItemModel>> fetchCoffeeList(
  FetchCoffeeListRef ref,
) async {
  final jsonString = await rootBundle.loadString('assets/images/data.json');
  final List<CoffeeItemModel> coffeeItems = (json.decode(jsonString) as List)
      .map((jsonItem) => CoffeeItemModel.fromJson(jsonItem))
      .toList();
  return coffeeItems;
}
