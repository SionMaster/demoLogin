import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

Widget MovieCard(String movieName, String imgPath) {
  return InkWell(
    onTap: () {},
    child: Column(
      children: [
        Card(
          elevation: 0.0,
          child: ClipRRect(
          borderRadius: BorderRadius.circular(5),
          child: Image.asset(
            imgPath,
            fit: BoxFit.fill,
            width: 100,
            height: 144,
          ),
        ),
        ),
        SizedBox(height: 3),
        Text(movieName,
            style: TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
            textAlign: TextAlign.start)
      ],
    ),
  );
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: const [Colors.black54, Colors.red])),
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    children: const <Widget>[
                      Text(
                        'DeepFilm',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 25),
                      ),
                      Spacer(),
                      Icon(
                        Icons.desktop_mac,
                        color: Colors.white ,
                      ),
                      SizedBox(width: 10),
                      Icon(
                        Icons.supervised_user_circle,
                        color: Colors.white,
                      ),
                      // Image.asset(
                      //   "assets/icons/user.png",
                      //   width: 20,
                      //   height: 23,
                      //   color: Colors.white,
                      // ),
                    ],
                  ),
                  SizedBox(
                    height: 27,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.black54,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 10),
                              blurRadius: 60,
                              color: Colors.black54.withOpacity(0.3))
                        ]),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset("assets/images/cartoon.jpg")),
                  ),
                  SizedBox(height: 18),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: const <Widget>[
                          SizedBox(width: 5,),
                          Text('Phim bộ',
                          style: TextStyle(color: Colors.white, fontSize: 20)),
                        ],
                      ),
                      Text('Phim lẻ',
                          style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold)),
                      Row(
                        children: const <Widget>[
                          Text('Danh mục',
                          style: TextStyle(color: Colors.white, fontSize: 20)),
                          Icon(
                            Icons.arrow_drop_down,
                            color: Colors.white
                          )
                        ]
                      )
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const <Widget>[
                      Text(
                        'Tiếp tục xem',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Xem thêm',
                        style: TextStyle(
                          color: Colors.deepPurple,
                          fontSize: 17,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: double.infinity,
                    height: 175,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 0),
                          child: MovieCard("Mavel", "assets/images/mavel.jpg"),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 0),
                          child: MovieCard(
                              "Dare devil", "assets/images/dare_devil.jpg"),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 0),
                          child: MovieCard("Doctor Strange",
                              "assets/images/doctor_strage.jpg"),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 0),
                          child: MovieCard(
                              "Annabelle", "assets/images/Annabelle.jpg"),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const <Widget>[
                      Text(
                        'Hành động',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Xem thêm',
                        style: TextStyle(
                          color: Colors.deepPurple,
                          fontSize: 17,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: double.infinity,
                    height: 175,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 0),
                          child:
                              MovieCard("Shooter", "assets/images/Shooter.jpg"),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 0),
                          child: MovieCard("Fuck", "assets/images/Ghost1.jpg"),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 0),
                          child: MovieCard("Doctor Strage",
                              "assets/images/doctor_strage.jpg"),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 0),
                          child: MovieCard("Expendables 2",
                              "assets/images/Expendables_2.jpg"),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Trang chủ'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text('Tìm kiếm')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            title: Text('Yêu thích')
          )          
        ],
      ),
    );
  }
}
