import 'package:flutter/material.dart';

class SearchableListWidget extends StatefulWidget {
  SearchableListWidget({
    required this.children,
    String? hintText,
  }) : this.hintText = hintText ?? '';

  final Map<String, Widget> children;
  final String hintText;

  @override
  _SearchableListState createState() => _SearchableListState();
}

class _SearchableListState extends State<SearchableListWidget> {
  final TextEditingController _textEditingController = TextEditingController();
  final List<Widget> _children = [];

  void _validate() {
    final input = _textEditingController.text;

    setState(() {
      _children.clear();
      widget.children.forEach((name, widget) {
        if (name.contains(input)) {
          _children.add(widget);
        }
      });
    });
  }

  void _clear() {
    _textEditingController.clear();

    setState(() {
      _children.clear();
      _children.addAll(widget.children.values);
    });
  }

  @override
  void initState() {
    _children.addAll(widget.children.values);

    super.initState();
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextField(
          controller: _textEditingController,
          onChanged: (_) => _validate(),
          decoration: InputDecoration(
            hintText: widget.hintText,
            prefixIcon: Icon(Icons.search),
            suffixIcon: IconButton(
              icon: Icon(Icons.clear),
              onPressed: () => _clear(),
            ),
          ),
        ),
        Wrap(
          children: _children,
        ),
      ],
    );
  }
}
