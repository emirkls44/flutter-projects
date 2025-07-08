import 'package:flutter/material.dart';

import 'detay.dart';

void main() => runApp(ModaApp());

class ModaApp extends StatelessWidget {
  const ModaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: AnaSayfa());
  }
}

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({super.key});

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Material(
        color: Colors.white,
        child: TabBar(
          controller: tabController,
          tabs: [
            Tab(icon: Icon(Icons.more, color: Colors.grey, size: 24)),
            Tab(
              icon: Icon(
                Icons.g_translate_outlined,
                color: Colors.grey,
                size: 24,
              ),
            ),
            Tab(icon: Icon(Icons.save_outlined, color: Colors.grey, size: 24)),
            Tab(icon: Icon(Icons.key, color: Colors.grey, size: 24)),
          ],
        ),
      ),

      appBar: AppBar(
        backgroundColor: Colors.cyan.shade300,
        title: Text('bİNSTAGRAM'),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.add_a_photo))],
      ),
      body: ListView(
        children: <Widget>[
          //Üst taraftaki profil listesi
          Container(
            color: Colors.transparent,
            padding: const EdgeInsets.all(5),
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(1),
              child: SizedBox(
                height: 140,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    listeElemani('assets/model1.jpeg'),
                    listeElemani('assets/model2.jpeg'),
                    listeElemani('assets/model3.jpeg'),
                    listeElemani('assets/model1.jpeg'),
                    listeElemani('assets/model2.jpeg'),
                    listeElemani('assets/model3.jpeg'),
                    listeElemani('assets/model1.jpeg'),
                    listeElemani('assets/model2.jpeg'),
                    listeElemani('assets/model3.jpeg'),
                    listeElemani('assets/model1.jpeg'),
                    listeElemani('assets/model2.jpeg'),
                    listeElemani('assets/model3.jpeg'),
                  ],
                ),
              ),
            ),
          ),
          //Card
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Material(
              borderRadius: BorderRadius.circular(16),
              elevation: 6,
              color: Colors.brown.shade200,
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(10),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: AssetImage('assets/model1.jpeg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(width: 5),
                        Container(
                          width: MediaQuery.of(context).size.width - 160,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'üzgün kurbaa',
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text('blogger', style: TextStyle(fontSize: 18)),
                            ],
                          ),
                        ),
                        Icon(
                          Icons.more_vert,
                          color: Colors.greenAccent.shade100,
                          size: 40,
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys ',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 18,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: <Widget>[
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) =>
                                    Detay(imgPath: 'assets/model1.jpeg'),
                              ),
                            );
                          },

                          child: Hero(
                            tag: 'assets/model1.jpeg',
                            child: Container(
                              height: 200,
                              width:
                                  (MediaQuery.of(context).size.width - 100) / 2,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image: DecorationImage(
                                  image: AssetImage('assets/model1.jpeg'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10, width: 15),
                        Column(
                          children: <Widget>[
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        Detay(imgPath: 'assets/model2.jpeg'),
                                  ),
                                );
                              },
                              child: Hero(
                                tag: 'assets/model2.jpeg',
                                child: Container(
                                  height: 100,
                                  width:
                                      (MediaQuery.of(context).size.width - 50) /
                                      2,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    image: DecorationImage(
                                      image: AssetImage('assets/model2.jpeg'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 10, width: 15),
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => Detay(imgPath: 'assets/model3.jpeg',),
                                  ),
                                );
                              },
                              child: Hero(
                                tag: 'assets/model3.jpeg',
                                child: Container(
                                  height: 100,
                                  width:
                                      (MediaQuery.of(context).size.width - 50) /
                                      2,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    image: DecorationImage(
                                      image: AssetImage('assets/model3.jpeg'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 10, width: 15),
                    Row(
                      children: <Widget>[
                        Container(
                          height: 25,
                          width: 74,
                          child: Text(
                            '#zara',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 18,
                              fontWeight: FontWeight.w300,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.cyan.shade500,
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          height: 25,
                          width: 100,
                          child: Text(
                            '#Lui Viton',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 18,
                              fontWeight: FontWeight.w300,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.cyan.shade500,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Divider(),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Icon(Icons.reply, color: Colors.black87),
                        SizedBox(height: 10, width: 5),
                        Text('1.7k'),
                        SizedBox(height: 10, width: 15),
                        Icon(Icons.chat, color: Colors.black87),
                        SizedBox(height: 10, width: 5),
                        Text('325'),
                        Container(
                          width: MediaQuery.of(context).size.width - 180,
                          alignment: Alignment.centerRight,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(Icons.heart_broken, color: Colors.red),
                              Text('1.5k'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Material(
              borderRadius: BorderRadius.circular(16),
              elevation: 6,
              color: Colors.brown.shade200,
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(10),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: AssetImage('assets/model1.jpeg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(width: 5),
                        Container(
                          width: MediaQuery.of(context).size.width - 160,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'üzgün kurbaa',
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text('blogger', style: TextStyle(fontSize: 18)),
                            ],
                          ),
                        ),
                        Icon(
                          Icons.more_vert,
                          color: Colors.greenAccent.shade100,
                          size: 40,
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys ',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 18,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: <Widget>[
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) =>
                                    Detay(imgPath: 'assets/model1.jpeg'),
                              ),
                            );
                          },

                          child: Hero(
                            tag: 'assets/model1.jpeg',
                            child: Container(
                              height: 200,
                              width:
                              (MediaQuery.of(context).size.width - 100) / 2,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image: DecorationImage(
                                  image: AssetImage('assets/model1.jpeg'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10, width: 15),
                        Column(
                          children: <Widget>[
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        Detay(imgPath: 'assets/model2.jpeg'),
                                  ),
                                );
                              },
                              child: Hero(
                                tag: 'assets/model2.jpeg',
                                child: Container(
                                  height: 100,
                                  width:
                                  (MediaQuery.of(context).size.width - 50) /
                                      2,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    image: DecorationImage(
                                      image: AssetImage('assets/model2.jpeg'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 10, width: 15),
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => Detay(imgPath: 'assets/model3.jpeg',),
                                  ),
                                );
                              },
                              child: Hero(
                                tag: 'assets/model3.jpeg',
                                child: Container(
                                  height: 100,
                                  width:
                                  (MediaQuery.of(context).size.width - 50) /
                                      2,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    image: DecorationImage(
                                      image: AssetImage('assets/model3.jpeg'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 10, width: 15),
                    Row(
                      children: <Widget>[
                        Container(
                          height: 25,
                          width: 74,
                          child: Text(
                            '#zara',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 18,
                              fontWeight: FontWeight.w300,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.cyan.shade500,
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          height: 25,
                          width: 100,
                          child: Text(
                            '#Lui Viton',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 18,
                              fontWeight: FontWeight.w300,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.cyan.shade500,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Divider(),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Icon(Icons.reply, color: Colors.black87),
                        SizedBox(height: 10, width: 5),
                        Text('1.7k'),
                        SizedBox(height: 10, width: 15),
                        Icon(Icons.chat, color: Colors.black87),
                        SizedBox(height: 10, width: 5),
                        Text('325'),
                        Container(
                          width: MediaQuery.of(context).size.width - 180,
                          alignment: Alignment.centerRight,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(Icons.heart_broken, color: Colors.red),
                              Text('1.5k'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Material(
              borderRadius: BorderRadius.circular(16),
              elevation: 6,
              color: Colors.brown.shade200,
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(10),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: AssetImage('assets/model1.jpeg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(width: 5),
                        Container(
                          width: MediaQuery.of(context).size.width - 160,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'üzgün kurbaa',
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text('blogger', style: TextStyle(fontSize: 18)),
                            ],
                          ),
                        ),
                        Icon(
                          Icons.more_vert,
                          color: Colors.greenAccent.shade100,
                          size: 40,
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys ',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 18,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: <Widget>[
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) =>
                                    Detay(imgPath: 'assets/model1.jpeg'),
                              ),
                            );
                          },

                          child: Hero(
                            tag: 'assets/model1.jpeg',
                            child: Container(
                              height: 200,
                              width:
                              (MediaQuery.of(context).size.width - 100) / 2,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image: DecorationImage(
                                  image: AssetImage('assets/model1.jpeg'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10, width: 15),
                        Column(
                          children: <Widget>[
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        Detay(imgPath: 'assets/model2.jpeg'),
                                  ),
                                );
                              },
                              child: Hero(
                                tag: 'assets/model2.jpeg',
                                child: Container(
                                  height: 100,
                                  width:
                                  (MediaQuery.of(context).size.width - 50) /
                                      2,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    image: DecorationImage(
                                      image: AssetImage('assets/model2.jpeg'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 10, width: 15),
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => Detay(imgPath: 'assets/model3.jpeg',),
                                  ),
                                );
                              },
                              child: Hero(
                                tag: 'assets/model3.jpeg',
                                child: Container(
                                  height: 100,
                                  width:
                                  (MediaQuery.of(context).size.width - 50) /
                                      2,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    image: DecorationImage(
                                      image: AssetImage('assets/model3.jpeg'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 10, width: 15),
                    Row(
                      children: <Widget>[
                        Container(
                          height: 25,
                          width: 74,
                          child: Text(
                            '#zara',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 18,
                              fontWeight: FontWeight.w300,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.cyan.shade500,
                          ),
                        ),
                        SizedBox(width: 10),
                        Container(
                          height: 25,
                          width: 100,
                          child: Text(
                            '#Lui Viton',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 18,
                              fontWeight: FontWeight.w300,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.cyan.shade500,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Divider(),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Icon(Icons.reply, color: Colors.black87),
                        SizedBox(height: 10, width: 5),
                        Text('1.7k'),
                        SizedBox(height: 10, width: 15),
                        Icon(Icons.chat, color: Colors.black87),
                        SizedBox(height: 10, width: 5),
                        Text('325'),
                        Container(
                          width: MediaQuery.of(context).size.width - 180,
                          alignment: Alignment.centerRight,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(Icons.heart_broken, color: Colors.red),
                              Text('1.5k'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),


        ],
      ),
    );
  }

  Widget listeElemani(String imagePath) {
    return SizedBox(
      width: 100,
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(backgroundImage: AssetImage(imagePath), radius: 35),
            SizedBox(height: 6),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.cyan.shade800,
              ),
              child: Text(
                'Takip Et',
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 12,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
