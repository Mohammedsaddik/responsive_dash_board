import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/model/user_info_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({
    super.key,
    required this.userInfoModel,
  });

  final UserInfoModel userInfoModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFFFAFAFA),
      elevation: 0.0,
      child: ListTile(
        leading: SizedBox(
          width: 27,
          height: 27,
          child: SvgPicture.asset(
            userInfoModel.image,
          ),
        ),
        title: FittedBox(
          alignment: AlignmentDirectional.centerStart,
          fit: BoxFit.scaleDown,
          child: Text(
            userInfoModel.title,
            style: AppStyles.styleSemiBold16(context),
          ),
        ),
        subtitle: FittedBox(
          alignment: AlignmentDirectional.centerStart,
          fit: BoxFit.scaleDown,
          child: Text(
            userInfoModel.supTitle,
            style: AppStyles.styleRegular12(context),
          ),
        ),
      ),
    );
  }
}
