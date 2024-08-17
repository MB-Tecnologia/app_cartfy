import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as httpClient;
import 'package:http/http.dart';

import '../models/productApp/productApp.dart';


class ProductService {
  final urlBase = "https://apiprodutoscartfy.azurewebsites.net/product";

  Future<ProductApp> getByBarcode(int gtin) async {
    // var url = Uri.parse("$urlBase/$gtin");
    // Response response = await httpClient.get(url);

    // Map<String, dynamic> json = jsonDecode(response.body);        
    
    // ProductApp productApp = (ProductApp.fromJson(json));
    // return ProductApp.fromJson(json);

    ProductApp productApp2 = const ProductApp(price: 100, description: "Teste", gtin: 900, imgUrl: "img", quantity:0);
    return productApp2;
  }
}