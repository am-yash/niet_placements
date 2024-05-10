import 'package:flutter/material.dart';

class CompanyTitleText extends StatelessWidget {
  final String title;
  final bool smallSize;
  final int maxLines;
  final TextAlign? textAlign;
  const CompanyTitleText(
      {super.key,
      required this.title,
      this.smallSize = false,
      this.maxLines = 2,
      this.textAlign = TextAlign.left});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      maxLines: maxLines,
      textAlign: textAlign,
      overflow: TextOverflow.ellipsis,
      style: smallSize
          ? Theme.of(context).textTheme.labelLarge
          : Theme.of(context).textTheme.titleMedium!.copyWith(
              fontWeight: FontWeight.w600,
        fontSize: 18.0,


      ),
    );
  }
}
