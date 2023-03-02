import 'package:flutter/material.dart';

import '../widgets/setting_tile.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 247, 250, 252),
      appBar: AppBar(
        title: const Text(
          'Setttings',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 22),
        ),
        backgroundColor: const Color.fromARGB(255, 247, 250, 252),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_outlined,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        elevation: 0.0,
      ),
      body: Container(
        margin: const EdgeInsets.all(18),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Text(
            'Notification Options',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Reminder',
                style: TextStyle(fontSize: 18),
              ),
              Switch(
                value: isSwitched,
                onChanged: (value) {
                  setState(() {
                    isSwitched = value;
                  });
                },
                activeColor: const Color.fromARGB(255, 214, 243, 215),
                activeTrackColor: Colors.green,
                inactiveTrackColor: Colors.grey[300],
              )
            ],
          ),
          const Divider(
            thickness: 1,
            color: Color.fromARGB(255, 221, 219, 219),
          ),
          const SizedBox(
            height: 10,
          ),
          const SettingTile(
            text: 'Morning',
          ),
           const SettingTile(
            text: 'Evening',
          ),
          const SizedBox(
            height: 10,
          ),
           const Text(
            'Account',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),
          ),
          const SizedBox(
            height: 5,
          ),
           const SettingTile(
            text: 'Upgrade Account',
          ),
           const SettingTile(
            text: 'Langauage',
          ),
           const SettingTile(
            text: 'Theme',
          ),
           const SettingTile(
            text: 'Units of measurement',
          ),
          const SettingTile(
            text: 'Log out',
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            'App',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),
          ),
          const SizedBox(
            height: 10,
          ),
           const SettingTile(
            text: 'App info',
          ),
           const SettingTile(
            text: 'Rate app',
          ),
          const SettingTile(
            text: 'Data storage',
          ),
        ]),
      ),
    );
  }
}
