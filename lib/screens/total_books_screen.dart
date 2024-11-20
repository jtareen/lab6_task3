import 'package:flutter/material.dart';
import 'package:lab6_task3/models/books.dart';


class BookListPage extends StatelessWidget {
  final List<Book> books;

  BookListPage({required this.books});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Book List'),
      ),
      body: ListView.builder(
        itemCount: books.length,
        itemBuilder: (context, index) {
          final book = books[index];
          return ListTile(
            title: Text(book.name),
            subtitle: Text(book.genre),
            trailing: book.isIssued
                ? (book.dueDate != null
                ? Text(
              'Due: ${book.dueDate!.toLocal().toString().split(' ')[0]}',
              style: TextStyle(
                color: book.dueDate!.isBefore(DateTime.now())
                    ? Colors.red
                    : Colors.green,
              ),
            )
                : null)
                : (book.isNewArrival
                ? Text(
              'New Arrival',
              style: TextStyle(color: Colors.blue),
            )
                : null),
          );
        },
      ),
    );
  }
}