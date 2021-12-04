import 'package:flutter/material.dart';

class MovieDetail extends StatefulWidget {
  const MovieDetail({Key? key}) : super(key: key);

  @override
  _MovieDetailState createState() => _MovieDetailState();
}

Widget WatchMovie() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        width: 350,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.black38,
        ),
        alignment: Alignment.center,
        child: const Text(
          'Xem phim',
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
        ),
      )
    ],
  );
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

Widget AddFavorites() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 13),
        width: 350,
        decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black87,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(15),
            color: Colors.white.withAlpha(50)),
        alignment: Alignment.center,
        child: const Text(
          'Thêm vào yêu thích',
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
      )
    ],
  );
}

class _MovieDetailState extends State<MovieDetail> {
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
                      colors: [
                    Colors.blue,
                    Colors.red,
                    Colors.blue,
                    Colors.black
                  ])),
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        margin: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const <Widget>[
                            Icon(
                              Icons.keyboard_arrow_left_rounded,
                              color: Colors.white,
                              size: 40,
                            ),
                          ],
                        )),
                    Image.asset("assets/images/Banner/doctor-strange.jpg"),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'DOCTOR STRANGE',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 36,
                          fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const <Widget>[
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 12),
                          child: Chip(
                            label: Text('18+',
                                style: TextStyle(color: Colors.white)),
                            backgroundColor: Colors.black45,
                            // padding: EdgeInsets.only(left: 12, right: 12),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 12),
                          child: Chip(
                            label: Text('Hành động',
                                style: TextStyle(color: Colors.white)),
                            backgroundColor: Colors.black45,
                            // padding: EdgeInsets.only(left: 12, right: 12),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 12),
                          child: Chip(
                            label: Text(
                                // Icon(Icons.star),
                                '9.0',
                                style: TextStyle(color: Colors.white)),
                            backgroundColor: Colors.black45,
                            // padding: EdgeInsets.only(left: 12, right: 12),
                          ),
                        )
                      ],
                    ),
                    WatchMovie(),
                    AddFavorites(),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 18),
                      child: const Text(
                        'Marvel\'s "Doctor Strange" follows the story of the talented neurosurgeon Doctor Stephen Strange who, after a tragic car accident, must put ego aside and learn the secrets of a hidden world of mysticism and alternate dimensions. Based in New York City\'s Greenwich Village, Doctor Strange must act as an',
                        style: TextStyle(color: Colors.white70),
                      ),
                    ),
                    const SizedBox(height: 5),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 3),
                      width: 330,
                      decoration: BoxDecoration(
                        color: Colors.black54,
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const <Widget>[
                            Text(
                              'Mùa 1',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        )),
                    Container(
                      width: double.infinity,
                      height: 175,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 0),
                            child: MovieCard("Doctor Strange",
                                "assets/images/doctor_strage.jpg"),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 0),
                            child: MovieCard("Doctor Strange",
                                "assets/images/doctor_strage.jpg"),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 0),
                            child: MovieCard("Doctor Strange",
                                "assets/images/doctor_strage.jpg"),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 0),
                            child: MovieCard("Doctor Strange",
                                "assets/images/doctor_strage.jpg"),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const <Widget>[
                            Text(
                              'Mùa 2',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        )),
                    Container(
                      width: double.infinity,
                      height: 175,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 0),
                            child: MovieCard("Doctor Strange",
                                "assets/images/doctor_strage.jpg"),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 0),
                            child: MovieCard("Doctor Strange",
                                "assets/images/doctor_strage.jpg"),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 0),
                            child: MovieCard("Doctor Strange",
                                "assets/images/doctor_strage.jpg"),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 0),
                            child: MovieCard("Doctor Strange",
                                "assets/images/doctor_strage.jpg"),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
