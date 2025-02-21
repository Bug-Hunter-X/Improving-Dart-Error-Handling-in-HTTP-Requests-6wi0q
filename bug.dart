```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Successfully fetched data
      final jsonData = jsonDecode(response.body);
      // Process jsonData
    } else {
      // Handle error
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exception
    print('Error fetching data: $e');
    // Rethrow to be handled further up the call stack if needed.
    rethrow;
  }
}
```