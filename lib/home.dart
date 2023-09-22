import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

List<String> language = ['one', 'two', 'three', 'four', 'five', 'six'];

class _homeState extends State<home> {
  String _currentLanguage = language[0];
  Future _displaaybpttomSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      builder: (context) => Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(40))),
        height: 400,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: Column(
              children: [
                RadioListTile(
                  title: Text('one'),
                  value: language[0],
                  groupValue: _currentLanguage,
                  onChanged: (value) {
                    setState(() {
                      _currentLanguage = value.toString();
                    });
                  },
                ),
                RadioListTile(
                  title: Text('two'),
                  value: language[1],
                  groupValue: _currentLanguage,
                  onChanged: (value) {
                    setState(() {
                      _currentLanguage = value.toString();
                    });
                  },
                ),
                RadioListTile(
                  title: Text('three'),
                  value: language[2],
                  groupValue: _currentLanguage,
                  onChanged: (value) {
                    setState(() {
                      _currentLanguage = value.toString();
                    });
                  },
                ),
                RadioListTile(
                  title: Text('four'),
                  value: language[3],
                  groupValue: _currentLanguage,
                  onChanged: (value) {
                    setState(() {
                      _currentLanguage = value.toString();
                    });
                  },
                ),
                RadioListTile(
                  title: Text('five'),
                  value: language[4],
                  groupValue: _currentLanguage,
                  onChanged: (value) {
                    setState(() {
                      _currentLanguage = value.toString();
                    });
                  },
                ),
                RadioListTile(
                  title: Text('six'),
                  value: language[5],
                  groupValue: _currentLanguage,
                  onChanged: (value) {
                    setState(() {
                      _currentLanguage = value.toString();
                    });
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Pop up screen sample')),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              _displaaybpttomSheet(context);
            },
            child: Text('Click to open pop up screen'),
          ),
        ));
  }
}
