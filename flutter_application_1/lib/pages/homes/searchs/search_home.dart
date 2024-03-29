import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/homes/searchs/book.dart';
import 'package:flutter_application_1/Pages/walks/walk_home_page.dart';

class SearchHome extends StatefulWidget {
  static const routerName = "/SearchHome.routerName";
  const SearchHome({
    super.key,
  });

  @override
  State<SearchHome> createState() => _SearchHomeState();
}

class _SearchHomeState extends State<SearchHome> {
  final controller = TextEditingController();
  List<Book> books = allBooks;
  String titleText = "Search";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: 0,
          backgroundColor: Colors.orange,
          centerTitle: true,
          title: Text(
            titleText,
            style: const TextStyle(
              fontSize: 30,
            ),
          ),
        ),
        body: Column(
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(16, 16, 16, 16),
              child: TextField(
                onChanged: searchBook,
                controller: controller,
                decoration: InputDecoration(
                  prefixIcon: InkWell(
                      onTap: () {
                        Navigator.of(context, rootNavigator: true)
                            .pushReplacementNamed(
                                "/BottomNavigationBarScreen.routerName");
                      },
                      child: const Icon(Icons.arrow_back)),
                  ////clear xóa chữ
                  suffixIcon: IconButton(
                    onPressed: controller.clear,
                    icon: const Icon(Icons.clear),
                  ),
                  hintText: "Search",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: books.length,
                itemBuilder: (context, index) {
                  final book = books[index];
                  return ListTile(
                    leading: Image.asset(
                      book.image,
                      fit: BoxFit.cover,
                      width: 50,
                      height: 50,
                    ),
                    title: Text(book.title),
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const WalkHomePage(),
                      ),
                    ),
                  );
                },
              ), ////4
            ),
          ],
        ),
      ),
    );
  }

  void searchBook(String query) {
    ////7
    final suggestions = allBooks.where((book) {
      final bookTitle = book.title.toLowerCase();
      final input = query.toLowerCase();
      return bookTitle.contains(input);
    }).toList();
    setState(() => books = suggestions);
  }
}
