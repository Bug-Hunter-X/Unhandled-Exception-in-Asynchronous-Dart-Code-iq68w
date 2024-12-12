```dart
import 'dart:async';

Future<void> fetchData() async {
  try {
    // Simulate an asynchronous operation that might throw an exception
    await Future.delayed(Duration(seconds: 2));
    if (/* some condition */) {
      throw Exception('Something went wrong!');
    }
    // ... rest of your code
  } catch (e) {
    // Handle the exception
    print('Error: $e');
  } finally {
    // This block always executes, even if an exception is thrown
    print('Data fetching complete.');
  }
}

void main() async {
  await fetchData();
}
```