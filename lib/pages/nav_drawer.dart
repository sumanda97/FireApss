part of 'pages.dart';

class NavigationDrawerWidget extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal: 20);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Colors.lightBlueAccent,
        child: ListView(
          children: <Widget>[
            Container(
              padding: padding,
              child: Column(
                children: [
                  buildMenuItem(
                      text: "Home",
                      icon: Icons.home,
                      onClicked: () => selectedItem(context, 0)),
                  SizedBox(
                    height: 16,
                  ),
                  buildMenuItem(
                      text: "History",
                      icon: Icons.history,
                      onClicked: () => selectedItem(context, 1)),
                  SizedBox(
                    height: 16,
                  ),
                  buildMenuItem(
                      text: "Pengaturan",
                      icon: Icons.settings,
                      onClicked: () => selectedItem(context, 2)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Widget Menu Item
  Widget buildMenuItem({
    @required String text,
    @required IconData icon,
    VoidCallback onClicked,
  }) {
    final color = Colors.black;
    final hoverColor = Colors.black;

    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(text, style: blackFontStyle2.copyWith(color: Colors.black)),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }

  void selectedItem(BuildContext context, int index) {
    Navigator.of(context).pop();
    switch (index) {
      case 0:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Homepage(),
        ));
        break;
      case 1:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => HistoryPage(),
        ));
        break;
      case 2:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => PengaturanPage(),
        ));
        break;
    }
  }
}
