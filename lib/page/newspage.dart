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

  late int page = 1;

  Widget iconro() {
    return Row(
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.download, size: 20, color: Colors.white),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(CupertinoIcons.heart_fill,
              size: 20, color: Colors.white),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.share, size: 20, color: Colors.white),
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
        future: _apiService.fetchData(page),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: Splash());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else {
            List<Map<String, dynamic>> data = snapshot.data!;
            return ListView.builder(
              itemCount: data.length + 1, // Add 1 for the additional ListTile
              itemBuilder: (context, index) {
                if (index == data.length) {
                  // This is the additional ListTile with the IconButton
                  return ListTile(
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Visibility(
                        visible: page>1,
                        child: IconButton(
                            onPressed: () {
                              if (page >= 2) {
                                setState(() {
                                  page--;
                                }
                                );
                                
                              }else{
                                
                              }
                            },
                            icon: Icon(Icons.arrow_back_ios,color: Colors.white,)),
                      ),
                      IconButton(
                          onPressed: () {
                            if (page >= 1) {
                              setState(() {
                                page++;
                              });
                            }
                          },
                          icon: Icon(Icons.arrow_forward_ios,color: Colors.white)),
                    ],
                  ));
                }

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
                          child: Image.network(
                            imageUrl,
                            width: 360,
                            height: 200,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 176,
                            child: Text(
                              title,
                              textAlign: TextAlign.start,
                              style: GoogleFonts.montserrat(
                                fontSize: 14,
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              ),
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

      // floatingActionButton:FloatingActionButton(onPressed: (){

      //   if (page > 0) {
      //     setState(() {
      //       page ++;
      //     });

      // };
      // }
      // ) ,
    );
  }
}
