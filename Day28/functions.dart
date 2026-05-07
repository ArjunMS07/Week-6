void main() {
  List<String> books = [
    "Python Basics",
    "Django Mastery",
    "Flutter Development",
    "AI for Beginners",
    "Advanced Python"
  ];

  // Search using category
  List<String> result = searchBooks(
    books,
    category: "Python",
  );

  print("Filtered Books:");
  print(result);

  // Search without category
  List<String> allBooks = searchBooks(books);

  print("\nAll Books:");
  print(allBooks);
}

// Function with optional named parameter
List<String> searchBooks(
  List<String> titles, {
  String? category,
}) {
  // If category is null, return all books
  if (category == null) {
    return titles;
  }

  // Filter books using .where()
  return titles
      .where((book) => book.contains(category))
      .toList();
}