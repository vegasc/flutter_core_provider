import 'package:flutter/material.dart';
import 'package:flutter_core/widgets/main_view_model.dart';
import 'package:provider/provider.dart';

class MainWidget extends StatelessWidget {

  static const appRoute = 'main-widget';

  const MainWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider<MainViewModel>(
      create: (ctx) => MainViewModel(),
      child: _MainWidget(),
      dispose: (_,vm) => vm.dispose()
    );
  }

}

class _MainWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: StreamBuilder(
          stream: MainViewModel.of(context).numberStream,
          builder: (ctx,_) {
            return Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text('Number: ${MainViewModel.of(context).number}'),
                    const SizedBox(
                      height: 50
                    ),
                    ElevatedButton(
                        onPressed: () {
                          int currentNumber = MainViewModel.of(context).number;
                          MainViewModel.of(context).set(currentNumber + 1);
                        },
                        child: const Text('tap me')
                    )
                  ]
              ),
            );
          }
        ),
      )
    );
  }

}