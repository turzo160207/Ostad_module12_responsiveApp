import 'package:flutter/material.dart';
import 'package:responsive_design_ostad/presentation/utils/screen_utils.dart';

class ResponsiveBuilder extends StatelessWidget {
  const ResponsiveBuilder({Key? key, required this.mobile, required this.desktop, this.tablet,}) : super(key: key);

  final Widget mobile;
  final Widget desktop;
  final Widget? tablet;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final DeviceType deviceType = ScreenUtils.getDeviceType(size.width);

    if(deviceType == DeviceType.mobile){
      return mobile;
    }
    else if(deviceType == DeviceType.tablet){
      return tablet ?? mobile;
    }

    return desktop;
  }
}
