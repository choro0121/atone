import 'package:flutter/material.dart';

import 'package:atone/widgets/select_chip.dart';

class NewRoomPage extends StatelessWidget {
  static const routeName = '/new_room';

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.close,
              color: Colors.black,
            ),
            onPressed: () => Navigator.pop(context),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.all(10),
              child: ElevatedButton(
                child: Text('完了'),
                onPressed: () => Navigator.pop(context),
                style: ElevatedButton.styleFrom(
                  elevation: 0.0,
                ),
              ),
            ),
          ],
          backgroundColor: Colors.white,
          centerTitle: false,
          title: Text('ルームを作成', style: TextStyle(color: Colors.black)),
        ),
        Text(
          'ゲーム',
          style: Theme.of(context).textTheme.headline2,
        ),
        SingleSelectChipWidget(
          select: ['hoge', 'fuga'],
          selected: '',
        ),
        Text(
          'プラットフォーム',
          style: Theme.of(context).textTheme.headline2,
        ),
        MultiSelectChipWidget(
          select: ['PlayStation', 'X box', 'PC', 'Switch'],
          selected: [],
        ),
        Text(
          'ランク',
          style: Theme.of(context).textTheme.headline2,
        ),
        MultiSelectChipWidget(
          select: [
            'ブロンズ',
            'シルバー',
            'ゴールド',
            'プラチナ',
            'ダイヤモンド',
            'マスター',
            'プレデター',
          ],
          selected: [],
        ),
      ],
    );
  }
}
