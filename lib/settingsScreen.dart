import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool vegeterianSwitch = false;
  bool veganSwitch = false;
  var prefs;

  Future<void> getSwitchStates() async {
    prefs = await SharedPreferences.getInstance();
    setState(() {
      vegeterianSwitch = prefs.getBool('vgt') ?? false;
      print(veganSwitch);
      veganSwitch = prefs.getBool('veg') ?? false;
    });
  }

  Future<void> updateVGTinPref(val) async {
    prefs.setBool('vgt', val);
  }

  Future<void> updateVEGinPref(val) async {
    prefs.setBool('veg', val);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Settings'),
          backgroundColor: Colors.orangeAccent,
        ),
        body: Column(
          children: [
            SwitchListTile(
                title: Text('Vegeterian only'),
                subtitle: Text('Allow only vegeterian meals'),
                value: vegeterianSwitch,
                onChanged: (val) {
                  setState(() {
                    print('hi');
                    print(val);
                    vegeterianSwitch = val;
                    updateVGTinPref(val);
                  });
                }),
            SwitchListTile(
                title: Text('Vegan only'),
                subtitle: Text('Allow only vegan meals'),
                value: veganSwitch,
                onChanged: (val) {
                  setState(() {
                    veganSwitch = val;
                    updateVEGinPref(val);
                  });
                }),
          ],
        ));
  }
}
