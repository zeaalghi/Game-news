import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/cupertino.dart';
import 'package:news/page/detail.dart';
import 'package:news/page/homepage.dart';
import 'package:news/service/api_service.dart';
import 'splash.dart';

void main() {
  runApp(const Newspage());
}


class Newspage extends StatefulWidget {
  const Newspage({super.key});

  @override
  State<Newspage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Newspage> {
  int _selectedButtonIndexb = 0;
  final APIService _apiService = APIService();
  Homepage hom = const Homepage();
  void _onButtonPressedb(int indexb) {
    setState(() {
      _selectedButtonIndexb = indexb;
    });
  }

  Widget iconro() {
    return Row(
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.download, size: 24, color: Colors.white),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(CupertinoIcons.heart_fill, size: 24, color: Colors.white),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.share, size: 24, color: Colors.white),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return
        // debugShowCheckedModeBanner: false,
        Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'MOBAA',
          style: TextStyle(
              fontFamily: 'Virile',
              color: Color.fromARGB(255, 185, 169, 242),
              fontSize: 36),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          color: const Color.fromARGB(255, 185, 169, 242),
          onPressed: () {
            // Navigator.pop(context);
            Navigator.pop(context, _selectedButtonIndexb);
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.settings,
              color: Color.fromARGB(255, 35, 23, 80),
            ),
            onPressed: () {},
          ),
        ],
      ),
      backgroundColor: const Color.fromARGB(255, 35, 23, 80),
      body: FutureBuilder<List<Map<String, dynamic>>>(
        future: _apiService.fetchData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: Splash());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else {
            List<Map<String, dynamic>> data = snapshot.data!;
            return ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) {
                String imageUrl = data[index]['thumb'];
                String title = data[index]['title'];
                String key = data[index]['key'];
                return ListTile(
                  title: Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetailPage(koy: key),
                            ),
                          );
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image.network(imageUrl,
                              width: 360, height: 200, fit: BoxFit.fill),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 180,
                            child: Text(
                              textAlign: TextAlign.start,
                              title,
                              style: GoogleFonts.montserrat(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          iconro(),
                        ],
                      ),
                    ],
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
