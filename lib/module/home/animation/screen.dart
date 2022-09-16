import 'package:flutter/material.dart';

import '../../log/screen/signup_screen.dart';

class ScreenAnimation extends StatefulWidget {
  const ScreenAnimation({Key? key}) : super(key: key);

  @override
  State<ScreenAnimation> createState() => _ScreenAnimationState();
}

class _ScreenAnimationState extends State<ScreenAnimation> {
  final _item = [];
  final GlobalKey<AnimatedListState> _key = GlobalKey();

  void _addItem() {
    _item.insert(0, "I Love U ${_item.length + 1}");
    _key.currentState!.insertItem(
      0,
      duration: const Duration(microseconds: 10),
    );
  }

  void _removeItem(int index) {
    _key.currentState!.removeItem(
      index,
      (_, animation) {
        return SizeTransition(
          sizeFactor: animation,
          child: const Card(
            margin: EdgeInsets.all(10),
            color: Colors.yellow,
            child: ListTile(
              title: Text("Delete"),
            ),
          ),
        );
      },
      duration: const Duration(
        microseconds: 100,
      ),
    );
    _item.removeAt(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(children: [
          const SizedBox(
            height: 100,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SignupScreen()));
            },
            child: const Text("onbording"),
          ),
          GestureDetector(
            onTap: _addItem,
            child: Container(
              alignment: Alignment.center,
              color: Colors.indigo,
              height: 50,
              width: 200,
              child: const Text(
                "Add Item",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Expanded(
            child: AnimatedList(
              key: _key,
              initialItemCount: 0,
              padding: const EdgeInsets.all(10),
              itemBuilder: (context, index, animation) {
                return SizeTransition(
                  sizeFactor: animation,
                  key: UniqueKey(),
                  child: Card(
                    color: Colors.yellow,
                    child: ListTile(
                      title: Text(
                        _item[index],
                      ),
                      trailing: IconButton(
                        onPressed: () {
                          _removeItem(index);
                        },
                        icon: const Icon(Icons.delete),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ]),
      ),
    );
  }
}
