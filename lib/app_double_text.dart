import 'package:flutter/material.dart';
import 'package:ticket_app/screens/all_tickets.dart';
import 'package:ticket_app/styles/app_styles.dart';

class AppDoubleText extends StatelessWidget {
  const AppDoubleText({
    Key? key,
    required this.bigText,
    required this.smallText,
    required this.func,
  }) : super(key: key);
  final String bigText;
  final String smallText;
  final VoidCallback func;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(bigText, style: AppStyles.headlineStyle2),
        InkWell(
          onTap: func,
          child: Text(
            smallText,
            style: AppStyles.textStyle.copyWith(color: AppStyles.primaryColor),
          ),
        ),
      ],
    );
  }
}
