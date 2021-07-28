import 'package:flutter/material.dart';

class GameCardWidget extends StatelessWidget {
  GameCardWidget({required this.title, required this.asset, this.onTap});

  final String title;
  final String asset;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap?.call(),
      child: Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRect(
              child: Align(
                alignment: Alignment.center,
                widthFactor: 0.2,
                heightFactor: 1.0,
                child: Image.asset(asset),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(title),
            ),
          ],
        ),
      ),
    );
  }
}
