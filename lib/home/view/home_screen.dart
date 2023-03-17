import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:setting_ui/home/provider/homeprovider.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  Homeprovider? hpfalse;
  Homeprovider? hptrue;
  @override
  Widget build(BuildContext context) {
    hpfalse=Provider.of(context,listen: false);
    hptrue=Provider.of(context,listen: true);
    
    
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text("Settings UI"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Common",
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.bold),
                  )),
              SizedBox(height: 15),
              ListTile(
                leading: Icon(Icons.language),
                title: Text("Language"),
                subtitle: Text("English"),
              ),
              SizedBox(height: 10),
              ListTile(
                leading: Icon(Icons.cloud),
                title: Text("Environment"),
                subtitle: Text("Production"),
              ),
              SizedBox(height: 10),
              Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Account",
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.bold),
                  )),
              SizedBox(height: 15),
              ListTile(
                leading: Icon(Icons.phone),
                title: Text("Phone number"),
              ),
              SizedBox(height: 10),
              ListTile(
                leading: Icon(Icons.email),
                title: Text("Email"),
              ),
              SizedBox(height: 10),
              ListTile(
                leading: Icon(Icons.exit_to_app),
                title: Text("Sign out"),
              ),
              SizedBox(height: 10),
              Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Security",
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.bold),
                  )),
              SizedBox(height: 15),
              ListTile(
                leading: Icon(Icons.phonelink_erase),
                title: Text("Lock app in background"),
                trailing: Switch(
                  value: hptrue!.on,
                  onChanged: (value) => hpfalse!.click(value),
                  activeColor: Colors.red,
                ),
              ),
              SizedBox(height: 10),
              ListTile(
                leading: Icon(Icons.fingerprint),
                title: Text("Use fingerprint"),
                trailing: Switch(
                  value: hptrue!.off,
                  onChanged: (value) => hpfalse!.onclick(value),
                  activeColor: Colors.red,
                ),
              ),
              SizedBox(height: 10),
              ListTile(
                leading: Icon(Icons.lock),
                title: Text("Change password"),
                trailing: Switch(
                  value: hptrue!.onoff,
                  onChanged: (value) => hpfalse!.onoffclick(value),
                  activeColor: Colors.red,
                ),
              ),
              SizedBox(height: 10),
              Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Misc",
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.bold),
                  )),

            ],
          ),
        ),
      ),
    );
  }
}
