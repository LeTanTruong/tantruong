class Book {
  ////1
  final String title;
  final String urlImage;
  final String name;
  const Book({
    required this.title,
    required this.urlImage,
    required this.name,
  });
}

const allBooks = [
  Book(
      title: "hình 1",
      urlImage: "assets/images/mau4.jpg",
      name: "chào hình 11"),
  Book(
      title: "hình 3",
      urlImage: "assets/images/mau5.jpg",
      name: "chào hình 33"),
  Book(
      title: "hình 5",
      urlImage: "assets/images/mau6.jpg",
      name: "chào hình 55"),
]; ////
