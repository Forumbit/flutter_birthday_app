import 'dart:convert' as convert;

import 'package:birthday_app/data/models/food_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/services.dart';

abstract class FoodRemoteDataSource {
  Future<List<FoodModel>> getAllFoods();
  Future<FoodModel> getFoodById(int id);
}

class FoodRemoteDataSourceImpl implements FoodRemoteDataSource {
  FoodRemoteDataSourceImpl({required this.dio});

  final Dio dio;

  @override
  Future<List<FoodModel>> getAllFoods() async {
    //* fake API request
    // ignore: unused_local_variable
    final checkNetworkReponse = dio.get('https://pub.dev');

    final data = await rootBundle.loadString("assets/json/menu_list.json");
    final jsonDecode = convert.jsonDecode(data) as List<dynamic>;
    final foodList =
        jsonDecode.map((item) => FoodModel.fromJson(item)).toList();
    return foodList;
  }

  @override
  Future<FoodModel> getFoodById(int id) async {
    //* fake API request
    // ignore: unused_local_variable
    final checkNetworkReponse = dio.get('https://pub.dev');
    
    final data =
        await rootBundle.loadString("assets/json/menu_detail/$id.json");
    final jsonDecode = convert.jsonDecode(data);
    final food = FoodModel.fromJson(jsonDecode);
    return food;
  }
}
