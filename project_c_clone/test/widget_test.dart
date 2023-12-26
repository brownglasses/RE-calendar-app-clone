import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

const Color darkBlue = Color.fromARGB(255, 18, 32, 47);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: darkBlue,
      ),
      debugShowCheckedModeBanner: false,
      home: const Scaffold(
        body: Center(
          child: ViewPage(),
        ),
      ),
    );
  }
}

class View extends StatelessWidget {
  late var vm = ViewModel();
  View({super.key});

  @override
  Widget build(BuildContext context) {
    vm = Provider.of<ViewModel>(context);
    return Column(
      children: [
        ElevatedButton(onPressed: vm.countUp, child: const Text("+1")),
        Text(
          '${vm.count}',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ],
    );
  }
}

class ViewModel with ChangeNotifier {
  int _count = 0;
  int get count => _count;

  void countUp() {
    _count++;
    notifyListeners();
  }
}

class ViewPage extends StatelessWidget {
  const ViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ViewModel>(
      create: (_) => ViewModel(),
      child: View(),
    );
  }
}
