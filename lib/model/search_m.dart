import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news/page/detail.dart';
import 'package:news/service/api_search.dart';

// ignore: must_be_immutable
class Search_m extends StatelessWidget {
  late String query;

  Search_m({required this.query, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final APISearch _apiCaAPISearch = APISearch();
    // late String query
    return Container(
      child: FutureBuilder<List<Map<String, dynamic>>>(
        future: _apiCaAPISearch.fetchData(query),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else {
            List<Map<String, dynamic>> data = snapshot.data!;
            return GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 8.0,
              ),
              itemCount: data.length, 
              itemBuilder: (context, index) {
                if (index == data.length) {
                }

                String imageUrl = data[index]['thumb'];
                String title = data[index]['title'];
                String key = data[index]['key'];

                return GestureDetector(
                  onTap: (){
                     Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetailPage(koy: key),
                            ),
                          );
                  },
                  child: Card(
                    elevation: 8,
                  
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12.0),
                          child: Image.network(
                            imageUrl,
                            width: 180,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Text(
                            title,
                            maxLines: 2, // Limit to 2 lines
                            overflow: TextOverflow.ellipsis, // Show ellipsis when overflowing
                            textAlign: TextAlign.start,
                            style: GoogleFonts.montserrat(
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                            ),
                        )
                      ],
                    ),
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}
