part of 'pages.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding:
                  EdgeInsets.symmetric(vertical: defaultMargin, horizontal: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome To KEKABARAKAN RENNU",
                    style: blackFontStyle3.copyWith(
                        fontWeight: FontWeight.w700, fontSize: 20),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(50, 5, 0, 5),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Select login \nfirst to continue.",
                    style: blackFontStyle2,
                  ),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 100,
                ),
                // Create New Account Button
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(top: 24.0),
                  height: 45.0,
                  padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: BeveledRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8.0)))),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Homepage(),
                        ));
                      },
                      child: Text(
                        "Masuk",
                        style: GoogleFonts.poppins(
                            color: Colors.white, fontWeight: FontWeight.w500),
                      )),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Or',
                  style: blackFontStyle2,
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: double.infinity,
                  height: 45.0,
                  padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: BeveledRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8.0)))),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Homepage(),
                        ));
                      },
                      child: Text(
                        "Buat Akun Baru ?",
                        style: GoogleFonts.poppins(
                            color: Colors.white, fontWeight: FontWeight.w500),
                      )),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
