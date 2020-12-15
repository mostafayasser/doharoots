import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:doharoots/models/notification.dart';
import 'package:doharoots/utils/next_screen.dart';
import 'package:doharoots/widgets/full_image.dart';
import 'package:doharoots/widgets/launch_url.dart';
import 'package:easy_localization/easy_localization.dart';

class NotificationDetails extends StatelessWidget {
  final NotificationModel data;
  const NotificationDetails({Key key, @required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('notification details').tr(),
        titleSpacing: 0,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 30, bottom: 15, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(CupertinoIcons.time_solid, size: 20, color: Colors.grey),
                SizedBox(
                  width: 3,
                ),
                Text(
                  data.date,
                  style: TextStyle(color: Colors.grey),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              data.title,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            ),
            Container(
              margin: EdgeInsets.only(top: 15, bottom: 20),
              height: 3,
              width: 300,
              decoration: BoxDecoration(color: Theme.of(context).primaryColor),
            ),
            Html(
              defaultTextStyle: TextStyle(
                  fontSize: 17,
                  //fontFamily: 'Open Sans',
                  fontWeight: FontWeight.normal,
                  color: Theme.of(context).primaryColorDark),
              data: '''${data.description}''',
              onImageTap: (imageUrl) =>
                  nextScreenPopup(context, FullScreeImage(imageUrl: imageUrl)),
              onLinkTap: (url) async {
                launchURL(context, url);
              },
            ),
          ],
        ),
      ),
    );
  }
}
