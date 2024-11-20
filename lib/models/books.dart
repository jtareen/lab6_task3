class Book {
  String name;
  String genre;
  bool isIssued;
  bool isNewArrival;
  DateTime? dueDate;

  Book({
    required this.name,
    required this.genre,
    this.isIssued = false,
    this.isNewArrival = false,
    this.dueDate,
  });
}

final List<Book> books = [
  Book(name: 'The Midnight Library', genre: 'Fiction', isNewArrival: true),
  Book(name: 'Project Hail Mary', genre: 'Science Fiction', isNewArrival: true),
  Book(name: 'Klara and the Sun', genre: 'Dystopian', isNewArrival: true),
  Book(name: 'Malibu Rising', genre: 'Drama', isNewArrival: true),
  Book(name: 'The Paper Palace', genre: 'Romance', isNewArrival: true),
  Book(
    name: 'Dune',
    genre: 'Science Fiction',
    isIssued: true,
    dueDate: DateTime.now().add(Duration(days: 7)),
  ),
  Book(
    name: 'The Catcher in the Rye',
    genre: 'Classic',
    isIssued: true,
    dueDate: DateTime.now().add(Duration(days: 5)),
  ),
  Book(
    name: 'Pride and Prejudice',
    genre: 'Romance',
    isIssued: true,
    dueDate: DateTime.now().add(Duration(days: 10)),
  ),
  Book(
    name: 'The Lord of the Rings',
    genre: 'Fantasy',
    isIssued: true,
    dueDate: DateTime.now().add(Duration(days: 3)),
  ),
  Book(
    name: 'The Alchemist',
    genre: 'Fiction',
    isIssued: true,
    dueDate: DateTime.now().add(Duration(days: 8)),
  ),
  Book(
    name: 'Moby Dick',
    genre: 'Adventure',
    isIssued: true,
    dueDate: DateTime.now().add(Duration(days: 6)),
  ),
  Book(
    name: 'Brave New World',
    genre: 'Dystopian',
    isIssued: true,
    dueDate: DateTime.now().add(Duration(days: 2)),
  ),
  Book(
    name: '1984',
    genre: 'Dystopian',
    isIssued: true,
    dueDate: DateTime.now().subtract(Duration(days: 3)),
  ),
  Book(
    name: 'Animal Farm',
    genre: 'Satire',
    isIssued: true,
    dueDate: DateTime.now().subtract(Duration(days: 5)),
  ),
  Book(
    name: 'The Great Gatsby',
    genre: 'Classic',
    isIssued: true,
    dueDate: DateTime.now().subtract(Duration(days: 1)),
  ),
  Book(name: 'Harry Potter', genre: 'Fantasy'),
  Book(name: 'The Hobbit', genre: 'Adventure'),
  Book(name: 'To Kill a Mockingbird', genre: 'Classic'),
  Book(name: 'The Kite Runner', genre: 'Drama'),
  Book(name: 'Sapiens', genre: 'Non-fiction'),
];

List<Book> getNewArrivals(List<Book> books) {
  return books.where((book) => book.isNewArrival).toList();
}

List<Book> getIssuedBooks(List<Book> books) {
  return books.where((book) => book.isIssued && book.dueDate != null).toList();
}

List<Book> getOverdueBooks(List<Book> books) {
  return books
      .where((book) =>
  book.isIssued && book.dueDate != null && book.dueDate!.isBefore(DateTime.now()))
      .toList();
}

List<Book> getAvailableBooks(List<Book> books) {
  return books.where((book) => !book.isIssued).toList();
}
