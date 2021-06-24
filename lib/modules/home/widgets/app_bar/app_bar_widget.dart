import 'package:flutter/material.dart';

import 'package:payflow/core/core.dart';
import 'package:payflow/shared/model/user_model.dart';

class AppBarWidget extends PreferredSize {
  String capitalize(String s) => s[0].toUpperCase() + s.substring(1);
  final UserModel user;
  final VoidCallback onTap;
  AppBarWidget({
    required this.user,
    required this.onTap,
  }) : super(
          preferredSize: Size.fromHeight(184),
          child: Container(
            height: 184,
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(color: AppTheme.colors.primary),
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  height: 184,
                  width: double.maxFinite,
                  child: Column(
                    children: [
                      ListTile(
                        contentPadding:
                            EdgeInsets.only(left: 8.0, right: 8.0, top: 65),
                        title: Text.rich(
                          TextSpan(
                            text: "Olá, ",
                            style: AppTheme.textStyles.titleRegular,
                            children: [
                              TextSpan(
                                text: user.name.split(" ")[0][0].toUpperCase() +
                                    user.name
                                        .split(" ")[0]
                                        .substring(1)
                                        .toLowerCase(),
                                style: AppTheme.textStyles.titleBoldBackground,
                              )
                            ],
                          ),
                        ),
                        subtitle: Text(
                          "Mantenha suas contas em dia",
                          style: AppTheme.textStyles.subtitleShape,
                        ),
                        trailing: Container(
                          width: 48,
                          height: 48,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            image: DecorationImage(
                              image: NetworkImage(user.photoUrl ?? ""),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Align(alignment: Alignment(0, 1), child: Container()),
              ],
            ),
          ),
        );
}
