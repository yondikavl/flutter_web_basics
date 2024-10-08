import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:the_basics/datamodels/season_details_model.dart';
import 'package:the_basics/widgets/season_details/season_details_desktop.dart';
import 'package:the_basics/widgets/season_details/season_details_mobile.dart';

class SeasonDetails extends StatelessWidget {
  final SeasonDetailsModel details;
  const SeasonDetails({super.key, required this.details});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop: SeasonDetailsDesktop(details: details),
      mobile: SeasonDetailsMobile(details: details),
    );
  }
}
