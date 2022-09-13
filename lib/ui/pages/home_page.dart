import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pointer_counter_bloc/cubit/counter_cubit.dart';
import 'package:pointer_counter_bloc/cubit/counter_state.dart';

import 'pointer_a.dart';
import 'pointer_b.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
      builder: (BuildContext context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.orange,
            title: const Text('Points Counter'),
          ),
          body: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const PointerA(),
                  Container(
                    height: 450,
                    child: const VerticalDivider(
                      endIndent: 35,
                      indent: 40,
                      color: Colors.black,
                      thickness: 1,
                    ),
                  ),
                  const PointerB(),
                ],
              ),
              const Divider(
                color: Colors.black,
                endIndent: 50,
                indent: 50,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.orange),
                onPressed: () {},
                child:
                    const Text('Reset', style: TextStyle(color: Colors.black)),
              ),
            ],
          ),
        );
      },
      listener: (context, state) {},
    );
  }
}
