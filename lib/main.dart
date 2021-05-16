import 'package:boutique_test/my_profile.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

final bool releaseMode = false;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return DevicePreview(
        enabled: !releaseMode,
        builder: (context) =>
            LayoutBuilder(
                builder: (context, constraints) =>
                    OrientationBuilder(
                        builder: (context, orientation) {
                          SizerUtil.setScreenSize(constraints, orientation);
                          return MaterialApp(
                            builder: DevicePreview.appBuilder,
                            title: 'Test',
                            debugShowCheckedModeBanner: false,
                            home: MyProfile(),
                          );
                        }
                    )
            )
    );
  }

}
