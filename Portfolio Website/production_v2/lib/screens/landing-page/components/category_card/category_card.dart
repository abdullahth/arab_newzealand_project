import 'package:auto_size_text_pk/auto_size_text_pk.dart';
import 'package:dims_config/dims_config.dart';
import 'package:flutter/material.dart';
import 'package:production_v2/models/category.dart';
import 'package:production_v2/prefernces/consts.dart';

class CategoryCard extends StatefulWidget {
  Category category;
  CategoryCard({required this.category});

  @override
  _CategoryCardState createState() => _CategoryCardState();
}

class _CategoryCardState extends State<CategoryCard> {
  late bool isHovered;
  @override
  void initState() {
    isHovered = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final dims = AdvancedDevicesDimsConfig(context);
    final theme = Theme.of(context);
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: dims.configHeight(12), horizontal: dims.configWidth(8)),
      child: Ink(
        child: InkWell(
          onTap: () {
            // final navigationCallback = CategoriesRoutes
            //     .anonymosCategoryName.navigateByCategoryNameCallback;
            // navigationCallback!(widget.category.categoryRoute.routeUrl!);
          },
          onHover: (value) {
            setState(() {
              isHovered = value;
            });
          },
          hoverColor: Colors.transparent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      offset: Offset(0, dims.configHeight(36)),
                      blurRadius: dims.configWidth(15),
                    )
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(dims.configWidth(15)),
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 500),
                    curve: Curves.ease,
                    width: isHovered
                        ? dims.deviceWidth * 0.23
                        : dims.deviceWidth * 0.21,
                    height: isHovered
                        ? dims.deviceWidth * 0.23
                        : dims.deviceWidth * 0.21,
                    color: theme.primaryColor,
                    child: ResponsivePadding(
                      padding: SymetricPadding(
                          context: context,
                          horizontal: dims.configWidth(1),
                          vertical: dims.configHeight(4)),
                      child: ClipRRect(
                        borderRadius:
                            BorderRadius.circular(dims.configWidth(15)),
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 500),
                          curve: Curves.ease,
                          width: isHovered
                              ? dims.deviceWidth * 0.225
                              : dims.deviceWidth * 0.2,
                          height: isHovered
                              ? dims.deviceWidth * 0.225
                              : dims.deviceWidth * 0.2,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: widget.category.backgroundAsset,
                                  fit: BoxFit.cover)),
                          child: Container(
                            color: Colors.black.withOpacity(0.5),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Spacer(),
                                Container(
                                  width: dims.deviceWidth * 0.08,
                                  height: dims.deviceWidth * 0.08,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: widget.category.icon)),
                                ),
                                Spacer(),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: dims.configWidth(12)),
                                  child: AutoSizeText(
                                    widget.category.categoryName,
                                    style: TextStyle(
                                        color: theme.primaryColor,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 32,
                                        fontFamily: 'Quicksand'),
                                    textDirection: textDirection,
                                    maxFontSize: 48,
                                    minFontSize: 16,
                                    maxLines: 1,
                                  ),
                                ),
                                Spacer(),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
