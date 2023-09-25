import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import 'package:exo/model/app_state_model.dart';
import 'package:exo/widgets/product_row_item.dart';

class ProductListTab extends StatelessWidget {
  const ProductListTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AppStateModel>(
      builder: (context, model, child) {
        final products = model.getProducts();
        return CustomScrollView(
          semanticChildCount: products.length,
          slivers: <Widget>[
            const CupertinoSliverNavigationBar(
              largeTitle: Text('Exo'),
            ),
            SliverSafeArea(
                top: false,
                minimum: const EdgeInsets.only(top: 0),
                sliver: SliverToBoxAdapter(
                  child: CupertinoListSection(
                    topMargin: 0,
                    children: [
                      for (var product in products)
                        ProductRowItem(
                          product: product,
                        ),
                    ],
                  ),
                ))
          ],
        );
      },
    );
  }
}
