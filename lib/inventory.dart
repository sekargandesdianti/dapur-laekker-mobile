import 'package:flutter/material.dart';

class ShopItem {
  final String name;
  final IconData icon;

  ShopItem({required this.name, required this.icon});
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  final List<ShopItem> items = [
    ShopItem(name: "Lihat Item", icon: Icons.checklist),
    ShopItem(name: "Tambah Item", icon: Icons.add_shopping_cart),
    ShopItem(name: "Logout", icon: Icons.logout),
  ];

  void showSnackbarMessage(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dapur Laekker'),
      ),
      body: Builder(
        builder: (BuildContext builderContext) {
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                  child: Text(
                    'Shop Inventory',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.all(10),
                      child: ElevatedButton.icon(
                        icon: Icon(items[index].icon),
                        label: Text(items[index].name),
                        onPressed: () {
                          showSnackbarMessage(context,
                              'Kamu telah menekan tombol ${items[index].name}');
                        },
                      ),
                    );
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
