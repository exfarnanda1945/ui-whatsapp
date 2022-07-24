import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ui_whatsapp/models/status_model.dart';
import 'package:ui_whatsapp/style/theme.dart';

class CallPage extends StatelessWidget {
  const CallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: statusList.length,
        itemBuilder: (context, index) {
          final status = statusList[index];
          return ListTile(
            leading:
                const Icon(Icons.account_circle, size: 58, color: Colors.black),
            title: Text(
              status.name,
              style: customTextStyle,
            ),
            subtitle: Text(status.statusDate),
            trailing: Icon(
              Icons.call,
              color: whatsAppLightGreen,
            ),
          );
        });
  }
}
