import 'package:OpenFoodFacts/res/app_colors.dart';
import 'package:OpenFoodFacts/res/app_vectoria_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'res/app_icons.dart';

class ScanList extends StatelessWidget {
  const ScanList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color primaryColor = Theme.of(context).primaryColor;

    return Theme(
        data: Theme.of(context).copyWith(
          appBarTheme: AppBarTheme(
            backgroundColor: AppColors.white,
            elevation: 0.0,
            centerTitle: false,
            iconTheme: IconTheme.of(context).copyWith(
              color: primaryColor,
            ),
          ),
        ),
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              'Mes scans',
              style: TextStyle(color: primaryColor),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  AppIcons.barcode,
                ),
              )
            ],
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                SvgPicture.asset(
                  AppVectoriaImages.illEmpty,
                  semanticsLabel: 'empty bag',
                ),
                const SizedBox(
                  height: 30.0,
                ),
                Text(
                  "Vous n'avez pas encore scanné\n de produits",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: primaryColor,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                TextButton(
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20.0,
                        vertical: 8.0,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Text(
                            'Commencer'.toUpperCase(),
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          const Icon(
                            Icons.arrow_right_alt,
                          ),
                        ],
                      ),
                    ),
                    style: OutlinedButton.styleFrom(
                      primary: AppColors.blue,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(22.0),
                        ),
                      ),
                      backgroundColor: AppColors.yellow,
                    ))
              ],
            ),
          ),
        ));
  }
}
