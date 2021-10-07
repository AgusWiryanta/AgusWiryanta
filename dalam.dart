import 'package:flutter/material.dart';

class GSPD extends StatefulWidget {
  const GSPD({Key? key}) : super(key: key);

  @override
  _GSPDState createState() => _GSPDState();
}

class _GSPDState extends State<GSPD> {
  bool isVisible = false;
  bool isVisible1 = false;
  @override
  Widget build(BuildContext context) {
    TabBar myTabBar = TabBar(
      indicator: BoxDecoration(
        color: Color(0xFF424874),
        border: Border(
          bottom: BorderSide(color: Colors.black38, width: 5),
          top: BorderSide(color: Colors.black38, width: 5),
          left: BorderSide(color: Colors.black38, width: 5),
          right: BorderSide(color: Colors.black38, width: 5),
        ),
      ),
      tabs: [
        Tab(
          icon: Icon(Icons.bookmark),
          child: Text(
            'Kompetensi Dasar',
            style: TextStyle(fontSize: 10),
          ),
        ),
        Tab(
          icon: Icon(Icons.bookmark_add),
          child: Text(
            'Tujuan Pembelajaran',
            style: TextStyle(fontSize: 10),
          ),
        ),
        Tab(icon: Icon(Icons.book_rounded), text: 'Materi')
      ],
    );
    return Scaffold(
        body: DefaultTabController(
            length: 3,
            child: Scaffold(
              backgroundColor: Color(0xFFFFEFD5),
              appBar: AppBar(
                title: Text(
                  'Garis Singgung Persekutuan Dalam',
                  style: TextStyle(fontSize: 18),
                ),
                backgroundColor: Color(0xFF8C9EFF),
                bottom: PreferredSize(
                  preferredSize: Size.fromHeight(myTabBar.preferredSize.height),
                  child: Container(
                    color: Colors.lightBlue,
                    child: myTabBar,
                  ),
                ),
              ),
              body: TabBarView(children: [
                Center(
                    child: Container(
                  width: 350,
                  height: 250,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.cyanAccent),
                  child: ListView(
                    children: [
                      Text(
                        'Kompetensi Dasar',
                        style: TextStyle(fontSize: 20),
                        textAlign: TextAlign.center,
                      ),
                      Padding(padding: EdgeInsets.all(15)),
                      Text(
                        '3.8 Menjelaskan garis singgung persekutuan luar dan dalam beserta cara melukisnya',
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontSize: 20),
                      ),
                      Padding(padding: EdgeInsets.all(10)),
                      Text(
                        '4.8 Menyelesaikan masalah yang berkaitan dengan garis singgung persekutuan luar dan persekutuan dalam dua lingkaran',
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                )),
                Center(
                  child: Container(
                    width: 350,
                    height: 250,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.indigoAccent),
                    child: ListView(
                      children: [
                        Text(
                          'Tujuan Pembelajaran',
                          style: TextStyle(fontSize: 20),
                          textAlign: TextAlign.center,
                        ),
                        Padding(padding: EdgeInsets.all(10)),
                        Text(
                          '1. Siswa mampu menemukan rumus menentukan garis singgung persekutuan Dalam antara dua lingkaran ',
                          textAlign: TextAlign.justify,
                          style: TextStyle(fontSize: 20),
                        ),
                        Padding(padding: EdgeInsets.all(5)),
                        Text(
                          '2. siswa mampu menyelesaikan permasalahan yang berkaitan dengan garis singgung persekutuan Dalam antara dua lingkaran',
                          textAlign: TextAlign.justify,
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.grey),
                    child: ListView(children: [
                      Padding(padding: EdgeInsets.all(2)),
                      Text('   Materi:',
                          style: TextStyle(
                              fontSize: 20, fontStyle: FontStyle.italic)),
                      Padding(padding: EdgeInsets.all(2)),
                      Text('   Garis singgung persekutuan Dalam dua lingkaran',
                          style: TextStyle(
                              fontSize: 15, fontStyle: FontStyle.italic)),
                      Container(
                        margin:
                            EdgeInsets.symmetric(vertical: 5, horizontal: 50),
                        height: 50,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Colors
                                    .redAccent, //background color of button
                                side: BorderSide(
                                    width: 3,
                                    color:
                                        Colors.brown), //border width and color
                                elevation: 3, //elevation of button
                                shape: RoundedRectangleBorder(
                                    //to set border radius to button
                                    borderRadius: BorderRadius.circular(30)),
                                padding: EdgeInsets.all(
                                    10) //content padding inside button
                                ),
                            onPressed: () {
                              setState(() {
                                isVisible1 = !isVisible1;
                              });
                            },
                            child: Text('Penjelasan Text')),
                      ),
                      Visibility(
                        visible: isVisible1,
                        child: Container(
                          margin:
                              EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white24),
                          child: Column(
                            children: [
                              Padding(padding: EdgeInsets.all(2)),
                              Text(
                                'Perhatikan gambar di bawah ini',
                                style: TextStyle(fontSize: 18),
                                textAlign: TextAlign.center,
                              ),
                              Padding(padding: EdgeInsets.all(2)),
                              // Gambar
                              Image(image: AssetImage('Assets/Materi_D1.png')),
                              Text('Gambar. 1'),
                              Padding(padding: EdgeInsets.all(3)),
                              Text(
                                'Dapat kita ketahui:                                                            ',
                                style: TextStyle(fontSize: 15),
                                textAlign: TextAlign.start,
                              ),
                              Padding(padding: EdgeInsets.all(2)),
                              Text(
                                  '1. Jari-jari lingkaran 1 dan jari-jari lingkaran 2 berturut-turut adalah R dan r.'),
                              Text(
                                  '2. Sudut siku-siku di titik D.                                                                  '),
                              Text(
                                  '3. Panjang garis singgung luar dua lingkaran adalah d                           '),
                              Padding(padding: EdgeInsets.all(5)),
                              Text(
                                  'melalui titik D kita dapat dibuat perpanjangan garis sepanjang r di titik E. Sedemikian sehingga garis CD sejajar dengan ruas garis BE. '),
                              Padding(padding: EdgeInsets.all(2)),
                              Text(
                                'Seperti Gambar dibawah ini',
                                style: TextStyle(fontSize: 18),
                              ),
                              Padding(padding: EdgeInsets.all(5)),
                              Image(image: AssetImage('Assets/Materi_D2.png')),
                              Text('Gambar. 2'),
                              Padding(padding: EdgeInsets.all(2)),
                              Text(
                                  'Perhatikan kembali (Gambar. 2).                                                   '),
                              Text(
                                  'Didapatkan bahwa Besar sudut ADC = Besar sudut AEB dan ruas garis ED sejajar dengan ruas garis BC. sehingga, dapat dicari panjang ruas BE = panjang garis singgung luar dua lingkaran (d) '),
                              Padding(padding: EdgeInsets.all(5)),
                              Text('dengan rumus :'),
                              Image(
                                  image: AssetImage('Assets/Rumus_Dalam.png'),
                                  width: 250),
                              Padding(padding: EdgeInsets.all(5)),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin:
                            EdgeInsets.symmetric(vertical: 5, horizontal: 50),
                        height: 50,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Colors
                                    .redAccent, //background color of button
                                side: BorderSide(
                                    width: 3,
                                    color:
                                        Colors.brown), //border width and color
                                elevation: 3, //elevation of button
                                shape: RoundedRectangleBorder(
                                    //to set border radius to button
                                    borderRadius: BorderRadius.circular(30)),
                                padding: EdgeInsets.all(
                                    10) //content padding inside button
                                ),
                            onPressed: () {
                              setState(() {
                                isVisible = !isVisible;
                              });
                            },
                            child: Text('Animasi GIF')),
                      ),
                      Visibility(
                          visible: isVisible,
                          child: Container(
                            height: 300,
                            width: 300,
                            child: ListView(
                              children: [
                                SizedBox(
                                      height: 25,
                                    ),
                                Image(
                                image: AssetImage('Assets/Dalam_Animasi.gif')),
                                SizedBox(
                                      height: 5,
                                    ),
                                    Container(
                                      margin: EdgeInsets.symmetric(vertical: 5,horizontal:5),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.white24),
                                      child: Text('Dengan Animasi di atas, kita ketahui untuk mencari panjang garis singgung persekutuan dalam antar dua lingkaran dapat dengan menggunakan phytagoras dengan memperhatikan sudut pada segitiga siku-siku',textAlign: TextAlign.justify,)
                                    )
                              ],
                            )
                          ))
                    ]),
                  ),
                )
              ]),
            )));
  }
}
