part of 'pages.dart';

class HistoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
        title: Text("History",
            style: blackFontStyle2.copyWith(color: Colors.white)),
        centerTitle: true,
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: defaultMargin),
              child: Text(
                "History Peringatan",
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
                              "PERINGATAN KEBAKARAN",
                              style: blackFontStyle3.copyWith(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Lokasi : " + ruangUtama.lokasi,
                                        style: blackFontStyle2.copyWith(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "Koordinat : ",
                                            style: blackFontStyle2.copyWith(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              Navigator.of(context)
                                                  .push(MaterialPageRoute(
                                                builder: (context) =>
                                                    HistoryPage(),
                                              ));
                                            },
                                            child: Text(
                                              ruangUtama.koordinat,
                                              style: blackFontStyle2.copyWith(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.blue),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "Temperatur : " +
                                            ruangUtama.temperaturek +
                                            " C",
                                        style: blackFontStyle2.copyWith(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "Humidity : " +
                                            ruangUtama.humidityk +
                                            "%",
                                        style: blackFontStyle2.copyWith(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w600),
                                      ),
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
                              "PERINGATAN KEBAKARAN",
                              style: blackFontStyle3.copyWith(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Lokasi : " + ruangUtama.lokasi,
                                        style: blackFontStyle2.copyWith(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "Koordinat : ",
                                            style: blackFontStyle2.copyWith(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              Navigator.of(context)
                                                  .push(MaterialPageRoute(
                                                builder: (context) =>
                                                    HistoryPage(),
                                              ));
                                            },
                                            child: Text(
                                              ruangUtama.koordinat,
                                              style: blackFontStyle2.copyWith(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.blue),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "Temperatur : " +
                                            ruangUtama.temperaturek +
                                            " C",
                                        style: blackFontStyle2.copyWith(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "Humidity : " +
                                            ruangUtama.humidityk +
                                            "%",
                                        style: blackFontStyle2.copyWith(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ],
                                  );
                                }),
                          )
                        ],
                      )
                    ],
                  ),
                ),
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
                              "PERINGATAN KEBAKARAN",
                              style: blackFontStyle3.copyWith(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.red),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Lokasi : " + ruangUtama.lokasi,
                                        style: blackFontStyle2.copyWith(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "Koordinat : ",
                                            style: blackFontStyle2.copyWith(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              Navigator.of(context)
                                                  .push(MaterialPageRoute(
                                                builder: (context) =>
                                                    HistoryPage(),
                                              ));
                                            },
                                            child: Text(
                                              ruangUtama.koordinat,
                                              style: blackFontStyle2.copyWith(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.blue),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "Temperatur : " +
                                            ruangUtama.temperaturek +
                                            " C",
                                        style: blackFontStyle2.copyWith(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "Humidity : " +
                                            ruangUtama.humidityk +
                                            "%",
                                        style: blackFontStyle2.copyWith(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ],
                                  );
                                }),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                //* KAMAR ANAK

                // TEST 1
              ],
            )
          ],
        ),
      ),
    );
  }
}
