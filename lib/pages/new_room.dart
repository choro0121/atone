import 'package:flutter/material.dart';

import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import 'package:atone/widgets/game_card.dart';
import 'package:atone/widgets/select_chip.dart';
import 'package:atone/widgets/searchable_list.dart';

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
        TextButton(
          child: Text('hoge'),
          onPressed: () {
            showCupertinoModalBottomSheet(
              expand: true,
              context: context,
              builder: (context) => SingleChildScrollView(
                controller: ModalScrollController.of(context),
                child: SearchableListWidget(
                  hintText: 'ゲームを検索',
                  children: {
                    'apex legends': GameCardWidget(
                      title: 'Apex Legends',
                      asset: 'images/ApexLegends.jpg',
                      onTap: () => Navigator.pop(context),
                    ),
                    'valorant': GameCardWidget(
                      title: 'Valorant',
                      asset: 'images/Valorant.jpg',
                      onTap: () => Navigator.pop(context),
                    ),
                    'pubg': GameCardWidget(
                      title: 'PUBG',
                      asset: 'images/PUBG.jpg',
                      onTap: () => Navigator.pop(context),
                    ),
                    'fortnite': GameCardWidget(
                      title: 'Fortnite',
                      asset: 'images/Fortnite.jpg',
                      onTap: () => Navigator.pop(context),
                    ),
                  },
                ),
              ),
            );
          },
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
