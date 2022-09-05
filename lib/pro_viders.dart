import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class pro_viders extends StatelessWidget {
  const pro_viders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Providers"),),
    body: ChangeNotifierProvider(builder: (context, child) {
      return Consumer<Model>(builder: (context, value, child) {
        return Column(children: [
          Text("${value.a}"),
          ElevatedButton(onPressed: () {
            value.increment();
          }, child: Text("Increment"))
        ],);
      },);
    },create: (context) => Model(),)

    );
  }
}

class Model extends ChangeNotifier {
  int a = 0;

  void increment()
  {
    a++;
    notifyListeners();
  }
}
