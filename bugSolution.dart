```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      try {
        final jsonData = jsonDecode(response.body);
        // Process jsonData
        print('Data fetched successfully: $jsonData');
      } on FormatException catch (e) {
        print('Invalid JSON format: $e');
        //Handle the error appropriately.
      }
    } else {
      throw Exception('Failed to load data. Status code: ${response.statusCode}, Body: ${response.body}');
    }
  } on Exception catch (e) {
    print('Error fetching data: $e');
    rethrow;
  }
}
```