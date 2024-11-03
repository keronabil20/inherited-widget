import 'package:counter_app_with_inherted_widgets/controllers/state_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
     // Access the Inherited_widget instance to retrieve the counter value
    final stateWidget =
        context.dependOnInheritedWidgetOfExactType<Inherited_widget>();
    return Scaffold(
      body: Padding(padding: EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Display counter value from Inherited_widget or default to '0'
              Text(
                stateWidget?.counter.toString() ?? '0',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: () {},
                  label: const Text('this is buttom'),
                  icon: const Icon(Icons.color_lens),
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
