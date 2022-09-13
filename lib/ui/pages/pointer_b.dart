import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubit/counter_cubit.dart';

class PointerB extends StatelessWidget {
  const PointerB({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Team B',
          style: TextStyle(fontSize: 30, color: Colors.black),
        ),
        AutoSizeText(
          '${context.watch<CounterCubit>().teamBpointers}',
          style: const TextStyle(fontSize: 150, color: Colors.black),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(primary: Colors.orange),
          onPressed: () {
            BlocProvider.of<CounterCubit>(context)
                .teamIncrement(team: 'B', buttonNumber: 1);
          },
          child:
              const Text('Add 1 point', style: TextStyle(color: Colors.black)),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(primary: Colors.orange),
          onPressed: () {
            BlocProvider.of<CounterCubit>(context)
                .teamIncrement(team: 'B', buttonNumber: 2);
          },
          child:
              const Text('Add 2 point', style: TextStyle(color: Colors.black)),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(primary: Colors.orange),
          onPressed: () {
            BlocProvider.of<CounterCubit>(context)
                .teamIncrement(team: 'B', buttonNumber: 3);
          },
          child:
              const Text('Add 3 point', style: TextStyle(color: Colors.black)),
        ),
      ],
    );
  }
}
