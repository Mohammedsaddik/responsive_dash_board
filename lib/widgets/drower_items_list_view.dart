import 'package:flutter/material.dart';
import 'package:responsive_dash_board/model/drower_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/drawer_item.dart';

class DrowerItemsListView extends StatefulWidget {
  const DrowerItemsListView({
    super.key,
  });

  @override
  State<DrowerItemsListView> createState() => _DrowerItemsListViewState();
}

class _DrowerItemsListViewState extends State<DrowerItemsListView> {
  final List<DrawerItemModel> item = [
    const DrawerItemModel(
      image: Assets.imagesDashboard,
      title: "Dashboard",
    ),
    const DrawerItemModel(
      image: Assets.imagesMyTransctions,
      title: "My Transaction",
    ),
    const DrawerItemModel(
      image: Assets.imagesStatistics,
      title: "Statistics",
    ),
    const DrawerItemModel(
      image: Assets.imagesWalletAccount,
      title: "Wallet Account",
    ),
    const DrawerItemModel(
      image: Assets.imagesMyInvestments,
      title: "My Investments",
    ),
  ];
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
        itemCount: item.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              if (activeIndex != index) {
                setState(() {
                  activeIndex = index;
                });
              }
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: DrawerItem(
                drawerItemModel: item[index],
                isActive: activeIndex == index,
              ),
            ),
          );
        });
  }
}
