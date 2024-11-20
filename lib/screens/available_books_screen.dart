import 'package:flutter/material.dart';
import 'package:lab6_task3/models/books.dart';

class AvailableBooksPage extends StatelessWidget {
  final List<Book> books;

  AvailableBooksPage({required this.books});

  @override
  Widget build(BuildContext context) {
    final availableBooks = getAvailableBooks(books);

    return Scaffold(
      appBar: AppBar(title: Text('Available Books')),
      body: ListView.builder(
        itemCount: availableBooks.length,
        itemBuilder: (context, index) {
          final book = availableBooks[index];
          return ListTile(
            title: Text(book.name),
            subtitle: Text(book.genre),
          );
        },
      ),
    );
  }
}
