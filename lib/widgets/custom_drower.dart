import 'package:flutter/material.dart';
import 'package:responsive_dash_board/model/drower_item_model.dart';
import 'package:responsive_dash_board/model/user_info_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/drower_items_list_view.dart';
import 'package:responsive_dash_board/widgets/user_info_list_tile.dart';
import 'active_and_inactive_drower_item.dart';

class CustomDrower extends StatelessWidget {
  const CustomDrower({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.7,
      color: Colors.white,
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(
              userInfoModel: UserInfoModel(
                image: Assets.imagesAvatar3,
                title: "Lekan Mohammed",
                supTitle: "demo@gmail.com",
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 8.0,
            ),
          ),
          DrowerItemsListView(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(
                    child: SizedBox(
                  height: 20,
                )),
                inActiveDrowerItem(
                  drawerItemModel: DrawerItemModel(
                      title: "Setting System", image: Assets.imagesSettings),
                ),
                inActiveDrowerItem(
                  drawerItemModel: DrawerItemModel(
                      title: "Logout Account", image: Assets.imagesLogout),
                ),
                SizedBox(
                  height: 60.0,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
