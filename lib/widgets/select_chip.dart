import 'package:flutter/material.dart';

class SingleSelectChipWidget extends StatefulWidget {
  SingleSelectChipWidget({
    required this.select,
    required this.selected,
    this.onSelected,
  });

  final List<String> select;
  String selected;
  final ValueChanged<String>? onSelected;

  @override
  _SingleSelectChipState createState() => _SingleSelectChipState();
}

class _SingleSelectChipState extends State<SingleSelectChipWidget> {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        for (var s in widget.select)
          ChoiceChip(
            label: Text(s),
            selected: widget.selected == s,
            onSelected: (_) {
              setState(
                () => widget.selected == s
                    ? widget.selected = ''
                    : widget.selected = s,
              );
              widget.onSelected?.call(widget.selected);
            },
          ),
      ],
    );
  }
}

class MultiSelectChipWidget extends StatefulWidget {
  MultiSelectChipWidget({
    required this.select,
    required this.selected,
    this.onSelected,
  });

  final List<String> select;
  final List<String> selected;
  final ValueChanged<List<String>>? onSelected;

  @override
  _MultiSelectChipState createState() => _MultiSelectChipState();
}

class _MultiSelectChipState extends State<MultiSelectChipWidget> {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        for (var s in widget.select)
          ChoiceChip(
            label: Text(s),
            selected: widget.selected.contains(s),
            onSelected: (_) {
              setState(
                () => widget.selected.contains(s)
                    ? widget.selected.remove(s)
                    : widget.selected.add(s),
              );
              widget.onSelected?.call(widget.selected);
            },
          ),
      ],
    );
  }
}
