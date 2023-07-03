import 'package:flutter/material.dart';

class ResponsiveLayoutBUilder extends StatelessWidget {
  final Widget extraSmallScreen;
  final Widget smallScreen;
  final Widget mediumScreen;
  final Widget largeScreen;
  final Widget extraLargeScreen;

  const ResponsiveLayoutBUilder(
      {super.key,
      required this.extraSmallScreen,
      required this.smallScreen,
      required this.mediumScreen,
      required this.largeScreen,
      required this.extraLargeScreen,
      });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth<=575) {
          return extraSmallScreen;
        } else if (constraints.maxWidth>575&& constraints.maxWidth<=767) {
          return smallScreen;
        }
        else if (constraints.maxWidth>767&& constraints.maxWidth<=991) {
          return mediumScreen;
        }else if (constraints.maxWidth>991&& constraints.maxWidth<=1199) {
          return largeScreen;
        }else {
          return extraLargeScreen;
        }


      },
    );
  }
}
// Extra Small (XS):
// Screen width: Up to 575px
// Small (SM):
// Screen width: 576px to 767px
// Medium (MD):
// Screen width: 768px to 991px
// Large (LG):
// Screen width: 992px to 1199px
// Extra Large (XL):
// Screen width: 1200px and above