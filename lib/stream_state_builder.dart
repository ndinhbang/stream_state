library stream_state_builder;

import 'package:flutter/material.dart';
import 'package:stream_state/stream_state.dart';

class StreamStateBuilder<T> extends StatelessWidget {
  final StreamState streamState;
  final Type type;
  final Function(BuildContext context, T state) builder;
  StreamStateBuilder(
      {@required this.streamState, @required this.builder, this.type});

  @override
  Widget build(BuildContext context) => StreamBuilder<T>(
        initialData: streamState.initial,
        stream: streamState.stream,
        builder: (context, snapshot) => builder(context, snapshot.data),
      );
}

class MultiStreamStateBuilder extends StatefulWidget {
  final List<StreamState> streamStates;

  final MultiStreamState multiStreamState;

  MultiStreamStateBuilder({@required this.streamStates})
      : multiStreamState = MultiStreamState(streamStates: streamStates);

  @override
  _MultiStreamStateBuilderState createState() =>
      _MultiStreamStateBuilderState();
}

class _MultiStreamStateBuilderState extends State<MultiStreamStateBuilder> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

// class MultiStreamStateBuilder extends StatelessWidget {
//   final List<StreamState> streamStates;
//   final Function builder;

//   const MultiStreamStateBuilder({@required this.streamStates, @required this.builder});

//   @override
//   Widget build(BuildContext context) {
//     for (StreamState streamState in streamStates.reversed){
//       var builder =
//     }
//   }
// }
