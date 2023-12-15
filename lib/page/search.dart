import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news/model/search_m.dart'; // Import the Search_m widget

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search Page',style: GoogleFonts.montserrat(color: Colors.white),),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: Color.fromARGB(255, 35, 23, 80),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: _searchController,
            style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                
                labelText: 'Search',
                suffixIcon: IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    _performSearch();
                  },
                ),
              ),
            ),
            SizedBox(height: 16.0),
            Expanded(
              child: _searchController.text.isNotEmpty
                  ? Search_m(query: _searchController.text)
                  : Center(child: Text('Enter a search query',style: GoogleFonts.montserrat(color: Colors.white),)),
            ),
          ],
        ),
      ),
    );
  }

  void _performSearch() {
    setState(() {});
  }
}

