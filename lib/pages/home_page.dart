part of 'pages.dart';

class Homepage extends StatefulWidget {
  final RuangUtama ruangUtama;

  Homepage({this.ruangUtama});
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
        title: Text("Home", style: blackFontStyle2),
        centerTitle: true,
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: defaultMargin),
              child: Text(
                "HOME",
                style: blackFontStyle3.copyWith(fontSize: 30),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // *RUANG TENGAH
                Container(
                  margin: EdgeInsets.symmetric(horizontal: defaultMargin),
                  height: 230,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.grey[350]),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: defaultMargin, vertical: 10),
                            child: Text(
                              "Ruang Tengah",
                              style: blackFontStyle3.copyWith(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      // TEMPERATURE & HUMIDITY
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin:
                                EdgeInsets.symmetric(horizontal: defaultMargin),
                            height: 150,
                            width: MediaQuery.of(context).size.width - 100,
                            child: ListView.builder(
                                itemCount: ruangUtamas.length,
                                itemBuilder: (BuildContext context, int index) {
                                  RuangUtama ruangUtama = ruangUtamas[index];
                                  return Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            height: 100,
                                            width: 140,
                                            child: Column(
                                              children: [
                                                Text(
                                                  "Temperature",
                                                  style: blackFontStyle3
                                                      .copyWith(fontSize: 20),
                                                ),
                                                SizedBox(
                                                  height: 20,
                                                ),
                                                Text(
                                                  ruangUtama.temperature
                                                          .toString() +
                                                      " C",
                                                  style:
                                                      blackFontStyle3.copyWith(
                                                          fontSize: 30,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                )
                                              ],
                                            ),
                                          ),
                                          Container(
                                            height: 100,
                                            width: 140,
                                            child: Column(
                                              children: [
                                                Text(
                                                  "Humidity",
                                                  style: blackFontStyle3
                                                      .copyWith(fontSize: 20),
                                                ),
                                                SizedBox(
                                                  height: 20,
                                                ),
                                                Text(
                                                  ruangUtama.humidity
                                                          .toString() +
                                                      " %",
                                                  style:
                                                      blackFontStyle3.copyWith(
                                                          fontSize: 30,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "Status Sensor Asap :",
                                            style: blackFontStyle2.copyWith(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            ruangUtama.status,
                                            style: blackFontStyle3.copyWith(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.red),
                                          )
                                        ],
                                      )
                                    ],
                                  );
                                }),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                // *KAMAR UTAMA
                SizedBox(
                  height: 15,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: defaultMargin),
                  height: 230,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.grey[350]),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: defaultMargin, vertical: 10),
                            child: Text(
                              "Kamar Utama",
                              style: blackFontStyle3.copyWith(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      // TEMPERATURE & HUMIDITY
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin:
                                EdgeInsets.symmetric(horizontal: defaultMargin),
                            height: 150,
                            width: MediaQuery.of(context).size.width - 100,
                            child: ListView.builder(
                                itemCount: kamarTengahs.length,
                                itemBuilder: (BuildContext context, int index) {
                                  KamarTengah kamarTengah = kamarTengahs[index];
                                  return Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            height: 100,
                                            width: 140,
                                            child: Column(
                                              children: [
                                                Text(
                                                  "Temperature",
                                                  style: blackFontStyle3
                                                      .copyWith(fontSize: 20),
                                                ),
                                                SizedBox(
                                                  height: 20,
                                                ),
                                                Text(
                                                  kamarTengah.temperature
                                                          .toString() +
                                                      " C",
                                                  style:
                                                      blackFontStyle3.copyWith(
                                                          fontSize: 30,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                )
                                              ],
                                            ),
                                          ),
                                          Container(
                                            height: 100,
                                            width: 140,
                                            child: Column(
                                              children: [
                                                Text(
                                                  "Humidity",
                                                  style: blackFontStyle3
                                                      .copyWith(fontSize: 20),
                                                ),
                                                SizedBox(
                                                  height: 20,
                                                ),
                                                Text(
                                                  kamarTengah.humidity
                                                          .toString() +
                                                      " %",
                                                  style:
                                                      blackFontStyle3.copyWith(
                                                          fontSize: 30,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "Status Sensor Asap :",
                                            style: blackFontStyle2.copyWith(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            kamarTengah.status,
                                            style: blackFontStyle3.copyWith(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.red),
                                          )
                                        ],
                                      )
                                    ],
                                  );
                                }),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                //* KAMAR ANAK
                Container(
                  margin: EdgeInsets.symmetric(horizontal: defaultMargin),
                  height: 230,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.grey[350]),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: defaultMargin, vertical: 10),
                            child: Text(
                              "Kamar Anak",
                              style: blackFontStyle3.copyWith(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      // TEMPERATURE & HUMIDITY
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin:
                                EdgeInsets.symmetric(horizontal: defaultMargin),
                            height: 150,
                            width: MediaQuery.of(context).size.width - 100,
                            child: ListView.builder(
                                itemCount: kamarAnaks.length,
                                itemBuilder: (BuildContext context, int index) {
                                  KamarAnak kamarAnak = kamarAnaks[index];
                                  return Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            height: 100,
                                            width: 140,
                                            child: Column(
                                              children: [
                                                Text(
                                                  "Temperature",
                                                  style: blackFontStyle3
                                                      .copyWith(fontSize: 20),
                                                ),
                                                SizedBox(
                                                  height: 20,
                                                ),
                                                Text(
                                                  kamarAnak.temperature
                                                          .toString() +
                                                      " C",
                                                  style:
                                                      blackFontStyle3.copyWith(
                                                          fontSize: 30,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                )
                                              ],
                                            ),
                                          ),
                                          Container(
                                            height: 100,
                                            width: 140,
                                            child: Column(
                                              children: [
                                                Text(
                                                  "Humidity",
                                                  style: blackFontStyle3
                                                      .copyWith(fontSize: 20),
                                                ),
                                                SizedBox(
                                                  height: 20,
                                                ),
                                                Text(
                                                  kamarAnak.humidity
                                                          .toString() +
                                                      " %",
                                                  style:
                                                      blackFontStyle3.copyWith(
                                                          fontSize: 30,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "Status Sensor Asap :",
                                            style: blackFontStyle2.copyWith(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            kamarAnak.status,
                                            style: blackFontStyle3.copyWith(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.red),
                                          )
                                        ],
                                      )
                                    ],
                                  );
                                }),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                // TEST 1
              ],
            )
          ],
        ),
      ),
    );
  }
}
