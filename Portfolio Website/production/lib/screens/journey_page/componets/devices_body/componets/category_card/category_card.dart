import 'package:auto_size_text_pk/auto_size_text_pk.dart';
import 'package:flutter/material.dart';
import 'package:production/models/category.dart';
import 'package:production/preferences/config_text_dir.dart';
import 'package:production/preferences/dims_config.dart';
import 'package:production/preferences/enums/categories_routes.dart';

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
    final dims = DimsConfig(context);
    final theme = Theme.of(context);
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: dims.height(12), horizontal: dims.width(8)),
      child: Ink(
        child: InkWell(
          onTap: () {
            final navigationCallback = CategoriesRoutes
                .anonymosCategoryName.navigateByCategoryNameCallback;
            navigationCallback!(widget.category.categoryRoute.routeUrl!);
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
                      color: Colors.black.withOpacity(0.4),
                      offset: Offset(0, dims.height(12)),
                      blurRadius: dims.width(15),
                    )
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(dims.width(15)),
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
                                horizontal: dims.width(12)),
                            child: AutoSizeText(
                              widget.category.categoryName,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 32,
                                  fontFamily: 'Quicksand'),
                              textDirection: getSuitableTextDirection(),
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
            ],
          ),
        ),
      ),
    );
  }
}
