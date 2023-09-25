import 'package:flutter/cupertino.dart';

class ShoppingCartTab extends StatefulWidget {
  const ShoppingCartTab({super.key});

  @override
  State<ShoppingCartTab> createState() {
    return _ShoppingCartTabState();
  }
}

class _ShoppingCartTabState extends State<ShoppingCartTab> {
  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(slivers: <Widget>[
      CupertinoSliverNavigationBar(
        largeTitle: Text('Cart'),
      ),
    ]);
  }
}
