import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;

void main() async {
  final dio = Dio();
  final dioService = DioService(dio);
  final httpClient = http.Client();
  final httpService = HttpService(httpClient);
  final product = Product(httpService);
  final list = await product.fetchProducts();
  print(list);
}

abstract class IHttpServide {
  Future<dynamic> get(String url);
}

class DioService implements IHttpServide {
  final Dio dio;
  DioService(this.dio);
  @override
  Future get(String url) async => (await dio.get(url)).data;
}

class HttpService implements IHttpServide {
  final http.Client client;
  HttpService(this.client);
  @override
  Future get(String url) async =>
      jsonDecode((await client.get(Uri.parse(url))).body);
}

class Product {
  final IHttpServide service;

  Product(this.service);

  Future<List> fetchProducts() async {
    final response =
        await service.get("https://jsonplaceholder.typicode.com/todos/");
    return response;
  }
}
