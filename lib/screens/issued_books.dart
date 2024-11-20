import 'package:flutter/material.dart';
import 'package:lab6_task3/models/books.dart';

class IssuedBooksPage extends StatelessWidget {
  final List<Book> books;

  IssuedBooksPage({required this.books});

  @override
  Widget build(BuildContext context) {
    final issuedBooks = getIssuedBooks(books);

    return Scaffold(
      appBar: AppBar(title: Text('Issued Books')),
      body: ListView.builder(
        itemCount: issuedBooks.length,
        itemBuilder: (context, index) {
          final book = issuedBooks[index];
          return ListTile(
            title: Text(book.name),
            subtitle: Text(book.genre),
            trailing: Text(
              'Due: ${book.dueDate!.toLocal().toString().split(' ')[0]}',
              style: TextStyle(
                color: book.dueDate!.isBefore(DateTime.now())
                    ? Colors.red
                    : Colors.green,
              ),
            ),
          );
        },
      ),
    );
  }
}
