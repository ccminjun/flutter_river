import 'package:flutter/material.dart';
import 'package:flutter_river/layout/default_layout.dart';
import 'package:flutter_river/riverpod/state_notifier_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class StateNotifierProvider extends ConsumerWidget {
  const StateNotifierProvider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, Widget ref) {
    
    final state = ref.watch(shoppingListProvider);
    
    return DefaultLayout(
        title: 'StateNotifierProvider', 
        body: ListView(
          children: [],
        ),
    );
  }
}
