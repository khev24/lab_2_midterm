import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile Application',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'My Profile'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE4EDF3),

      // Fixed header
      appBar: AppBar(
        backgroundColor: const Color(0xFF07155F),
        foregroundColor: Colors.white,
        title: Text(widget.title)
      ),

      // Scrollable body
      body: Container(
        decoration: BoxDecoration(
          color: Color(0xFFE4EDF3),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Card(
                elevation: 1,
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'JALBUENA, KHEVIN FRANZ E.',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF07155F),
                            ),
                          ),

                          SizedBox(height: 5),

                          Text(
                            '"kev"',
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xFF506070),
                            ),
                          ),

                          SizedBox(height: 8),

                          Text(
                            'BSIT   •   3rd Year   •   3IT-B',
                            style: TextStyle(
                              fontSize: 13,
                              color: Color(0xFF145DB0),
                            ),
                          ),
                        ],
                      ),

                      // Avatar
                      Image.network(
                        'https://i.pinimg.com/736x/a6/e2/f0/a6e2f0ad7e1d6aebcb8d975d1592cd42.jpg',
                        fit: BoxFit.fill,
                      )
                    ],
                  ),
                ),
              ),

              SizedBox(height: 25),

              Text(
                'PERSONAL INFORMATION',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF145DB0),
                ),
              ),

              SizedBox(height: 10),

              Card(
                elevation: 1,
                child: Column(
                  children: [

                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Color(0xFFDCEAF5),
                        child: Icon(
                          Icons.cake_outlined,
                          color: Color(0xFF145DB0),
                        ),
                      ),
                      title: Text('Age'),
                      trailing: Text('19'),
                    ),

                    Divider(height: 1),

                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Color(0xFFDCEAF5),
                        child: Icon(
                          Icons.calendar_today_outlined,
                          color: Color(0xFF145DB0),
                        ),
                      ),
                      title: Text('Birthday'),
                      trailing: Text('October 24, 2006'),
                    ),

                    Divider(height: 1),

                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Color(0xFFDCEAF5),
                        child: Icon(
                          Icons.location_on_outlined,
                          color: Color(0xFF145DB0),
                        ),
                      ),
                      title: Text('Address'),
                      trailing: Text('San Isidro, Cabuyao, Laguna'),
                    ),

                    Divider(height: 1),

                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Color(0xFFDCEAF5),
                        child: Icon(
                          Icons.favorite_outline,
                          color: Color(0xFF145DB0),
                        ),
                      ),
                      title: Text('Hobby'),
                      trailing: Text('Gaming, Sports'),
                    ),

                    Divider(height: 1),

                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Color(0xFFDCEAF5),
                        child: Icon(
                          Icons.format_quote,
                          color: Color(0xFF145DB0),
                        ),
                      ),
                      title: Text('Motto'),
                      trailing: Text('Life is short.'),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 25),

              Text(
                'ACADEMIC INFORMATION',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF145DB0),
                ),
              ),

              SizedBox(height: 10),

              Card(
                elevation: 0,
                color: Color(0xFFC9E0ED),
                child: Column(
                  children: [

                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Color(0xFFDCEAF5),
                        child: Icon(
                          Icons.menu_book_outlined,
                          color: Color(0xFF07155F),
                        ),
                      ),
                      title: Text(
                        'Favorite Subject',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF07155F),
                        ),
                      ),
                      subtitle: Text(
                        'Physical Activities Toward Health and Fitness',
                      ),
                    ),

                    Divider(
                      height: 1,
                      color: Color.fromARGB(255, 149, 170, 185),
                    ),

                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Color(0xFFDCEAF5),
                        child: Icon(
                          Icons.code,
                          color: Color(0xFF07155F),
                        ),
                      ),
                      title: Text(
                        'Programming Language',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF07155F),
                        ),
                      ),
                      subtitle: Text('Java'),
                    ),

                    Divider(
                      height: 1,
                      color: Color.fromARGB(255, 149, 170, 185),
                    ),

                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Color(0xFFDCEAF5),
                        child: Icon(
                          Icons.flag_outlined,
                          color: Color(0xFF07155F),
                        ),
                      ),
                      title: Text(
                        'Career Goal',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF07155F),
                        ),
                      ),
                      subtitle: Text('Web Developer'),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
