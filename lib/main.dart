import 'package:flutter/material.dart';
import 'package:flutter_property_finder/api/property_scoped_model.dart';
import 'package:flutter_property_finder/screens/splash_screen.dart';
import 'package:flutter_property_finder/screens/search_screen.dart';
import 'package:scoped_model/scoped_model.dart';

var routes = <String, WidgetBuilder>{
  "/home": (BuildContext context) => SearchScreen(),
};

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final PropertyScopedModel propertyScopedModel = PropertyScopedModel();

  @override
  Widget build(BuildContext context) {
    propertyScopedModel.initializeValues();

    return ScopedModel<PropertyScopedModel>(
      model: propertyScopedModel,
      child: MaterialApp(
        title: 'Liberty House',
        theme: ThemeData(
          primarySwatch: Colors.green,
          accentColor: Colors.pink,
        ),
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
        routes: routes,
      ),
    );
  }
}
