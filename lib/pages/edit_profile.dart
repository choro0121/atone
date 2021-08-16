import 'package:flutter/material.dart';

class EditProfilePage extends StatelessWidget {
  static const routeName = '/profile/edit';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            color: Colors.black,
            onPressed: () => Navigator.pop(context),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.all(10),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('保存'),
              ),
            ),
          ],
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          title: Text('プロフィール', style: TextStyle(color: Colors.black)),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 48,
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 15,
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.camera_alt,
                            size: 15,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Text('ユーザー名'),
              SizedBox(height: 10),
              TextField(),
              SizedBox(height: 30),
              Text('性別'),
              SizedBox(height: 10),
              TextField(enabled: false),
              SizedBox(height: 30),
              Text('自己紹介'),
              SizedBox(height: 10),
              TextField(),
            ],
          ),
        ),
      ],
    );
  }
}
