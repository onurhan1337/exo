import 'package:exo/widgets/product_list_tab.dart';
import 'package:exo/widgets/search_tab.dart';
import 'package:exo/widgets/shopping_cart_tab.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

class ExoApp extends StatelessWidget {
  const ExoApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

    return const CupertinoApp(
      theme: CupertinoThemeData(
        brightness: Brightness.light,
        primaryColor: CupertinoColors.activeBlue,
      ),
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            label: 'Products',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.shopping_cart),
            label: 'Cart',
          ),
        ],
      ),
      tabBuilder: (context, index) {
        return switch (index) {
          0 => CupertinoTabView(
              builder: (context) =>
                  const CupertinoPageScaffold(child: ProductListTab()),
            ),
          1 => CupertinoTabView(
              builder: (context) =>
                  const CupertinoPageScaffold(child: SearchTab()),
            ),
          2 => CupertinoTabView(
              builder: (context) =>
                  const CupertinoPageScaffold(child: ShoppingCartTab()),
            ),
          _ => throw Exception('Invalid tab $index'),
        };
      },
    );
  }
}
