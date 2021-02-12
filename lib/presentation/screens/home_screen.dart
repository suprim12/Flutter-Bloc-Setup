import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../logic/cubit/counter_cubit.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
        elevation: 0,
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 40, bottom: 10),
            child: Text(
              'Counter Value:',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
          BlocBuilder<CounterCubit, CounterState>(
            builder: (context, state) {
              return Text(
                state.counterValue.toString(),
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              );
            },
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    BlocProvider.of<CounterCubit>(context).increment();
                  },
                  icon: Icon(Icons.expand_less),
                  color: Colors.black,
                  iconSize: 20,
                ),
                IconButton(
                  onPressed: () {
                    BlocProvider.of<CounterCubit>(context).decrement();
                  },
                  icon: Icon(Icons.expand_more),
                  color: Colors.black,
                  iconSize: 20,
                )
              ],
            ),
          )
        ],  
      ),
    );
  }
}
