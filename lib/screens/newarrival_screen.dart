import 'package:flutter/material.dart';
import 'package:lab6_task3/models/books.dart';

class NewArrivalsPage extends StatelessWidget {
  final List<Book> books;

  NewArrivalsPage({required this.books});

  @override
  Widget build(BuildContext context) {
    final newArrivals = getNewArrivals(books);

    return Scaffold(
      appBar: AppBar(title: Text('New Arrivals')),
      body: ListView.builder(
        itemCount: newArrivals.length,
        itemBuilder: (context, index) {
          final book = newArrivals[index];
          return ListTile(
            title: Text(book.name),
            subtitle: Text(book.genre),
          );
        },
      ),
    );
  }
}
