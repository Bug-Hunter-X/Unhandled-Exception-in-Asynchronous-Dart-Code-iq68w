```dart
import 'dart:async';

Future<void> fetchData() async {
  try {
    // Simulate an asynchronous operation that might throw an exception
    await Future.delayed(Duration(seconds: 2));
    if (true) { // Simulate an error condition
      throw Exception('Something went wrong!');
    }
    // ... rest of your code (this won't execute if an exception is thrown)
    print('Data fetched successfully!');
  } on Exception catch (e) {
    // Handle specific exception types
    print('Caught an Exception: $e');
  } catch (e, s) {
    // Handle other errors
    print('Caught an error: $e');
    print('Stack trace: $s');
  } finally {
    // Clean up resources
    print('Data fetching complete (in finally).');
  }
}

void main() async {
  await fetchData();
}
```