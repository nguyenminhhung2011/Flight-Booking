import 'package:flutter/material.dart';

import 'image_custom.dart';

enum CategoryType {
  expanCategory,
  listCategory,
}

class CategoryField extends StatefulWidget {
  final CategoryType categoryType;
  final double? marginLeft;
  final double? marginRight;
  final double? marginTop;
  final double? marginBottom;
  final double? spacingItem;
  final int? numberColumn;
  final List<CategoryStyle> categories;
  final bool isCategoryIcon;
  final bool isIconOut;
  const CategoryField({
    super.key,
    required this.categoryType,
    this.marginLeft,
    this.marginRight,
    this.marginTop,
    this.marginBottom,
    required this.categories,
    this.isCategoryIcon = false,
    this.isIconOut = false,
    this.spacingItem = 5.0,
    this.numberColumn,
  });

  @override
  State<CategoryField> createState() => _CategoryFieldState();
}

class _CategoryFieldState extends State<CategoryField> {
  bool get isExpand => widget.categoryType == CategoryType.expanCategory;
  int get numberColumn => widget.numberColumn ?? 1;
  @override
  Widget build(BuildContext context) {
    if (widget.categoryType == CategoryType.listCategory) {
      return Padding(
        padding: EdgeInsets.only(
          top: widget.marginTop ?? 0.0,
          right: widget.marginRight ?? 0.0,
          left: widget.marginLeft ?? 0.0,
          bottom: widget.marginBottom ?? 0.0,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: widget.categories
                .map(
                  (e) => CategoryItem(
                    category: e,
                    isIconOut: widget.isIconOut,
                  ),
                )
                .toList()
                .expand(
                  (element) =>
                      [element, SizedBox(width: widget.spacingItem ?? 5.0)],
                )
                .toList()
              ..removeLast(),
          ),
        ),
      );
    }

    return Container(
      margin: EdgeInsets.only(
        top: widget.marginTop ?? 0.0,
        right: widget.marginRight ?? 0.0,
        left: widget.marginLeft ?? 0.0,
        bottom: widget.marginBottom ?? 0.0,
      ),
      child: Column(
        children: List.generate(numberColumn, (indexC) {
          return Row(
            children: List.generate(
              widget.categories.length,
              (indexR) => Expanded(
                child: CategoryItem(
                  category: widget.categories[indexR],
                  isIconOut: widget.isIconOut,
                  isExpand: isExpand,
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  final CategoryStyle category;
  final bool isExpand;
  final bool isIconOut;
  const CategoryItem({
    super.key,
    required this.category,
    this.isIconOut = true,
    this.isExpand = false,
  });

  @override
  Widget build(BuildContext context) {
    // if (isIconOut) {
    return GestureDetector(
      onTap: category.onPress,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.only(
              right: category.paddingRight ?? 10.0,
              left: category.paddingLeft ?? 10.0,
              top: category.paddingTop ?? 5.0,
              bottom: category.paddingBottom ?? 5.0,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(category.radius ?? 10.0),
              color: category.color?.withOpacity(0.1) ??
                  Theme.of(context).primaryColor.withOpacity(0.1),
            ),
            child: (isIconOut)
                ? category.icon != null
                    ? _iconCategory()
                    : const SizedBox()
                : Row(
                    children: [
                      if (category.icon != null) _iconCategory(),
                      isExpand
                          ? Expanded(
                              child: _nameCategory(context),
                            )
                          : _nameCategory(context)
                    ],
                  ),
          ),
          if (isIconOut) ...[
            const SizedBox(height: 5.0),
            _nameCategory(context),
          ]
        ],
      ),
    );
  }

  Widget _iconCategory() => ImageCustom(
        imageUrl: category.icon!,
        isNetworkImage: false,
        color: category.color,
        width: category.iconSize,
        height: category.iconSize,
      );

  Widget _nameCategory(BuildContext context) {
    return Text(
      category.text,
      maxLines: 1,
      style: category.textStyle ??
          Theme.of(context).textTheme.titleSmall!.copyWith(
                fontWeight: FontWeight.bold,
                overflow: TextOverflow.ellipsis,
              ),
    );
  }
}

class CategoryStyle {
  final String text;
  final String? icon;
  final Color? color;
  final double? radius;
  final double? paddingTop;
  final double? paddingLeft;
  final double? paddingRight;
  final double? iconSize;
  final double? paddingBottom;
  final TextStyle? textStyle;
  final Function() onPress;
  CategoryStyle({
    required this.text,
    required this.onPress,
    this.color,
    this.icon,
    this.radius,
    this.textStyle,
    this.paddingTop,
    this.paddingLeft,
    this.paddingRight,
    this.paddingBottom,
    this.iconSize,
  });
}
