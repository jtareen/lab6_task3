import 'package:flutter/material.dart';
import 'package:lab6_task3/models/books.dart';
import 'package:lab6_task3/models/members.dart';
import 'package:lab6_task3/screens/available_books_screen.dart';
import 'package:lab6_task3/screens/issued_books.dart';
import 'package:lab6_task3/screens/members_screen.dart';
import 'package:lab6_task3/screens/newarrival_screen.dart';
import 'package:lab6_task3/screens/overdue_books_screen.dart';
import 'package:lab6_task3/screens/total_books_screen.dart';

class DashboardItem {
  final String title;
  final String subtitle;
  final IconData icon;
  final Color color;
  final void Function(BuildContext context) onPressed;

  DashboardItem({
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.color,
    required this.onPressed
  });
}

// Sample data
final List<DashboardItem> libraryDashboardItems = [
  DashboardItem(
    title: 'Total Books',
    subtitle: '20',
    icon: Icons.book,
    color: Colors.blue,
    onPressed: (context) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => BookListPage(books: books)));
    }
  ),
  DashboardItem(
    title: 'Total Members',
    subtitle: '5',
    icon: Icons.person,
    color: Colors.green,
      onPressed: (context) {
        Navigator.push(context, MaterialPageRoute(builder: (context) => MemberGridPage(members: members,)));
      }
  ),
  DashboardItem(
    title: 'Books Issued',
    subtitle: '7',
    icon: Icons.assignment,
    color: Colors.orange,
      onPressed: (context) {
        Navigator.push(context, MaterialPageRoute(builder: (context) => IssuedBooksPage(books: books)));
      }
  ),
  DashboardItem(
    title: 'Books Available',
    subtitle: '13',
    icon: Icons.library_books,
    color: Colors.purple,
      onPressed: (context) {
        Navigator.push(context, MaterialPageRoute(builder: (context) => AvailableBooksPage(books: books)));
      }
  ),
  DashboardItem(
    title: 'Overdue Books',
    subtitle: '3',
    icon: Icons.warning,
    color: Colors.red,
      onPressed: (context) {
        Navigator.push(context, MaterialPageRoute(builder: (context) => OverdueBooksPage(books: books)));
      }
  ),
  DashboardItem(
    title: 'New Arrivals',
    subtitle: '5',
    icon: Icons.new_releases,
    color: Colors.teal,
      onPressed: (context) {
        Navigator.push(context, MaterialPageRoute(builder: (context) => NewArrivalsPage(books: books)));
      }
  ),
];
