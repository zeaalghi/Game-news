import 'package:dio/dio.dart';

class APISearch {
  final Dio _dio = Dio();

  Future<List<Map<String, dynamic>>> fetchData(String query) async {
    try {
      final response = await _dio.get('https://the-lazy-media-api.vercel.app/api/search?search=$query');
      if (response.statusCode == 200) {
        List<Map<String, dynamic>> data = (response.data as List).cast<Map<String, dynamic>>();
        return data;
      } else {
        throw Exception('Failed to load data');
      }
    } catch (e) {
      throw Exception('Failed to load data: $e');
    }
  }
}
