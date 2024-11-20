import 'package:flutter/material.dart';
import 'package:lab6_task3/models/books.dart';

class OverdueBooksPage extends StatelessWidget {
  final List<Book> books;

  OverdueBooksPage({required this.books});

  @override
  Widget build(BuildContext context) {
    final overdueBooks = getOverdueBooks(books);

    return Scaffold(
      appBar: AppBar(title: Text('Overdue Books')),
      body: ListView.builder(
        itemCount: overdueBooks.length,
        itemBuilder: (context, index) {
          final book = overdueBooks[index];
          return ListTile(
            title: Text(book.name),
            subtitle: Text(book.genre),
            trailing: Text(
              'Due: ${book.dueDate!.toLocal().toString().split(' ')[0]}',
              style: TextStyle(color: Colors.red),
            ),
          );
        },
      ),
    );
  }
}
