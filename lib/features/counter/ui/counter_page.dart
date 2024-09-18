import 'package:counter_bloc/features/counter/bloc/counter_bloc_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  CounterBlocBloc counterBloc = CounterBlocBloc();
  @override
  void initState() {
    counterBloc.add(CounterInitialEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Counter App"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blue,
          onPressed: () {
            counterBloc.add(CounterIncrementEvent());
          },
          child: const Icon(Icons.add),
        ),
        body: BlocConsumer<CounterBlocBloc, CounterBlocState>(
          bloc: counterBloc,
          buildWhen: (previous, current) => current is! CounterBlocActionState,
          listenWhen: (previous, current) => current is CounterBlocActionState,
          listener: (context, state) {
            if (state.runtimeType == ShowSnackbarState) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text("Snackbar")),
              );
            }
          },
          builder: (context, state) {
            switch (state.runtimeType) {
              case const (CounterIncrementState):
                final successState = state as CounterIncrementState;
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        successState.value.toString(),
                        style: const TextStyle(fontSize: 60),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue),
                        onPressed: () {
                          counterBloc.add(ShowSnackbarEvent());
                        },
                        child: const Text(
                          "Snackbar",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                );
              default:
                return const Center(
                  child: Text("Not Found"),
                );
            }
          },
        )

        // BlocListener<CounterBlocBloc, CounterBlocState>(
        //   bloc: counterBloc,
        //   listener: (context, state) {
        //     if (state.runtimeType == ShowSnackbarState) {
        //       ScaffoldMessenger.of(context).showSnackBar(
        //         const SnackBar(content: Text("Snackbar")),
        //       );
        //     }
        //   },
        //   child: Center(
        //     child: Column(
        //       mainAxisAlignment: MainAxisAlignment.center,
        //       children: [
        // const Text(
        //   "0",
        //   style: TextStyle(fontSize: 60),
        // ),
        // ElevatedButton(
        //   style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
        //   onPressed: () {
        //     counterBloc.add(ShowSnackbarEvent());
        //   },
        //   child: const Text(
        //     "Snackbar",
        //     style: TextStyle(color: Colors.white),
        //   ),
        // ),
        //       ],
        //     ),
        //   ),
        // )

        // BlocBuilder<CounterBlocBloc, CounterBlocState>(
        //   bloc: counterBloc,
        //   builder: (context, state) {
        //     switch (state.runtimeType) {
        //       case const (CounterIncrementState):
        //         final successState = state as CounterIncrementState;
        // return Center(
        //   child: Column(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: [
        //       Text(
        //         successState.value.toString(),
        //         style: const TextStyle(fontSize: 60),
        //       )
        //     ],
        //   ),
        // );
        //       default:
        //         return const Center(
        //           child: Text(
        //             "Not Found",
        //             style: TextStyle(fontSize: 60),
        //           ),
        //         );
        //     }
        //   },
        // ),
        );
  }
}
