part of 'pages.dart';

class PengaturanPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Pengaturan",
          style: blackFontStyle3,
        ),
        centerTitle: true,
      ),
      body: Container(
        child: Center(child: Text("Pengaturan")),
      ),
    );
  }
}
