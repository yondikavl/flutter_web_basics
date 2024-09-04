import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CenteredView extends StatelessWidget {
  final Widget child;
  const CenteredView({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        // Menentukan padding berdasarkan tipe perangkat
        EdgeInsets padding =
            sizingInformation.deviceScreenType == DeviceScreenType.mobile
                ? const EdgeInsets.symmetric(horizontal: 20, vertical: 15)
                : const EdgeInsets.symmetric(horizontal: 70, vertical: 60);

        return Container(
          padding: padding,
          alignment: Alignment.topCenter,
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 1200),
            child: child,
          ),
        );
      },
    );
  }
}
