import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp((Platform.isAndroid)
      ? MaterialApp(
          debugShowCheckedModeBanner: false,
          routes: {'/': (context) => MyApp()},
        )
      : (Platform.isIOS)
          ? CupertinoApp(
              debugShowCheckedModeBanner: false,
              home: HomePage(),
            )
          : Container());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    bool light = false;
    bool light1 = false;
    bool light2 = false;
    return Scaffold(
      appBar: AppBar(
        title: Text("Setting UI"),
        backgroundColor: Colors.red,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(10),
                ),
                Text(
                  "common",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            ListTile(
              leading: Icon(Icons.language),
              title: Text("Language"),
              subtitle: Text("English"),
            ),
            Container(
              margin: EdgeInsets.all(10),
              height: 1,
              color: Colors.grey.shade200,
            ),
            ListTile(
              leading: Icon(Icons.production_quantity_limits),
              title: Text("Environment"),
              subtitle: Text("production"),
            ),
            Container(
              margin: EdgeInsets.all(10),
              height: 1,
              color: Colors.grey.shade200,
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(10),
                ),
                Text(
                  "Account",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text("Phone number"),
            ),
            Container(
              margin: EdgeInsets.all(10),
              height: 1,
              color: Colors.grey.shade200,
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text("Email"),
            ),
            Container(
              margin: EdgeInsets.all(10),
              height: 1,
              color: Colors.grey.shade200,
            ),
            ListTile(
              leading: Icon(Icons.login_outlined),
              title: Text("Sign out"),
            ),
            Container(
              margin: EdgeInsets.all(10),
              height: 1,
              color: Colors.grey.shade200,
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(10),
                ),
                Text(
                  "Secutiry",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            ListTile(
              leading: Icon(Icons.phonelink_lock),
              title: Text("Lock app in Background"),
              trailing: Switch(
                value: light,
                onChanged: (e) {
                  setState(() {
                    light = e;
                  });
                },
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              height: 1,
              color: Colors.grey.shade200,
            ),
            ListTile(
              leading: Icon(Icons.fingerprint),
              title: Text("Use fingerprint"),
              trailing: Switch(
                value: light1,
                onChanged: (e) {
                  setState(() {
                    light1 = e;
                  });
                },
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              height: 1,
              color: Colors.grey.shade200,
            ),
            ListTile(
              leading: Icon(Icons.lock),
              title: Text("Change password"),
              trailing: Switch(
                value: light2,
                onChanged: (e) {
                  setState(() {
                    light2 = e;
                  });
                },
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(10),
                ),
                Text(
                  "Misc",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            ListTile(
                leading: Icon(Icons.insert_drive_file_outlined),
                title: Text("Terms of service"),
                trailing: Icon(Icons.arrow_forward_ios)),
            Container(
              margin: EdgeInsets.all(10),
              height: 1,
              color: Colors.grey.shade200,
            ),
            ListTile(
                leading: Icon(Icons.file_copy_rounded),
                title: Text("Open source licenses1"),
                trailing: Icon(Icons.arrow_forward_ios)),
          ],
        ),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    bool switch1 = false;
    bool switch2 = false;
    bool switch3 = false;
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.opaqueSeparator.elevatedColor,
      navigationBar: CupertinoNavigationBar(
        middle: Text(
          "Setting UI",
        ),
        backgroundColor: CupertinoColors.destructiveRed,
      ),
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            Container(
              padding: EdgeInsets.all(5),
              child: Text(
                "Common",
                style: TextStyle(color: CupertinoColors.inactiveGray),
              ),
            ),
            Container(
              height: 50,
              color: CupertinoColors.white,
              child: Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: Icon(
                        CupertinoIcons.circle_grid_hex,
                        color: CupertinoColors.inactiveGray,
                      )),
                  Expanded(flex: 4, child: Text("Language")),
                  Expanded(flex: 2, child: Text("English")),
                  Expanded(
                      flex: 1,
                      child: Icon(
                        CupertinoIcons.forward,
                        color: CupertinoColors.inactiveGray,
                      ))
                ],
              ),
            ),
            Container(
              height: 50,
              color: CupertinoColors.white,
              child: Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: Icon(
                        CupertinoIcons.cloud,
                        color: CupertinoColors.inactiveGray,
                      )),
                  Expanded(flex: 4, child: Text("Environment")),
                  Expanded(flex: 2, child: Text("Production")),
                  Expanded(
                      flex: 1,
                      child: Icon(
                        CupertinoIcons.forward,
                        color: CupertinoColors.inactiveGray,
                      ))
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              padding: EdgeInsets.all(5),
              child: Text(
                "Account",
                style: TextStyle(color: CupertinoColors.inactiveGray),
              ),
            ),
            Container(
              height: 50,
              color: CupertinoColors.white,
              child: Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: Icon(
                        CupertinoIcons.phone_fill,
                        color: CupertinoColors.inactiveGray,
                      )),
                  Expanded(flex: 5, child: Text("Phone Number")),
                  Expanded(
                      flex: 1,
                      child: Icon(
                        CupertinoIcons.forward,
                        color: CupertinoColors.inactiveGray,
                      ))
                ],
              ),
            ),
            Container(
              height: 50,
              color: CupertinoColors.white,
              child: Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: Icon(
                        CupertinoIcons.mail_solid,
                        color: CupertinoColors.inactiveGray,
                      )),
                  Expanded(flex: 5, child: Text("Email")),
                  Expanded(
                      flex: 1,
                      child: Icon(
                        CupertinoIcons.forward,
                        color: CupertinoColors.inactiveGray,
                      ))
                ],
              ),
            ),
            Container(
              height: 50,
              color: CupertinoColors.white,
              child: Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: Icon(
                        CupertinoIcons.square_arrow_right,
                        color: CupertinoColors.inactiveGray,
                      )),
                  Expanded(flex: 5, child: Text("Sign Out")),
                  Expanded(
                      flex: 1,
                      child: Icon(
                        CupertinoIcons.forward,
                        color: CupertinoColors.inactiveGray,
                      ))
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              padding: EdgeInsets.all(5),
              child: Text(
                "Security",
                style: TextStyle(color: CupertinoColors.inactiveGray),
              ),
            ),
            Container(
              height: 50,
              color: CupertinoColors.white,
              child: Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: Icon(
                        CupertinoIcons.lock_shield_fill,
                        color: CupertinoColors.inactiveGray,
                      )),
                  Expanded(flex: 4, child: Text("Lock app in background")),
                  Expanded(
                      flex: 1,
                      child: CupertinoSwitch(
                        activeColor: CupertinoColors.destructiveRed,
                        value: switch1,
                        onChanged: (val) {
                          setState(() {
                            switch1 = val;
                          });
                        },
                      ))
                ],
              ),
            ),
            Container(
              height: 50,
              color: CupertinoColors.white,
              child: Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: Icon(
                        CupertinoIcons.hand_thumbsup_fill,
                        color: CupertinoColors.inactiveGray,
                      )),
                  Expanded(flex: 4, child: Text("Use fingerPrint")),
                  Expanded(
                      flex: 1,
                      child: CupertinoSwitch(
                        activeColor: CupertinoColors.destructiveRed,
                        value: switch2,
                        onChanged: (val) {
                          setState(() {
                            switch2 = val;
                          });
                        },
                      ))
                ],
              ),
            ),
            Container(
              height: 50,
              color: CupertinoColors.white,
              child: Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: Icon(
                        CupertinoIcons.lock_fill,
                        color: CupertinoColors.inactiveGray,
                      )),
                  Expanded(flex: 4, child: Text("Change password")),
                  Expanded(
                      flex: 1,
                      child: CupertinoSwitch(
                        activeColor: CupertinoColors.destructiveRed,
                        value: switch3,
                        onChanged: (val) {
                          setState(() {
                            switch3 = val;
                          });
                        },
                      ))
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              padding: EdgeInsets.all(5),
              child: Text(
                "misc",
                style: TextStyle(color: CupertinoColors.systemGrey),
              ),
            ),
            Container(
              height: 50,
              color: CupertinoColors.white,
              child: Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: Icon(
                        CupertinoIcons.text_insert,
                        color: CupertinoColors.inactiveGray,
                      )),
                  Expanded(flex: 4, child: Text("Terms of Service")),
                  Expanded(
                      flex: 1,
                      child: Icon(
                        CupertinoIcons.forward,
                        color: CupertinoColors.inactiveGray,
                      ))
                ],
              ),
            ),
            Container(
              height: 50,
              color: CupertinoColors.white,
              child: Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: Icon(
                        CupertinoIcons.square_fill_on_square_fill,
                        color: CupertinoColors.inactiveGray,
                      )),
                  Expanded(flex: 4, child: Text("Open source licences")),
                  Expanded(
                      flex: 1,
                      child: Icon(
                        CupertinoIcons.forward,
                        color: CupertinoColors.inactiveGray,
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
