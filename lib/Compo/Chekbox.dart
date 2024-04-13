/*import 'package:aquapro/Buissnes%20Logic/ChekBox_Bloc/chek_box_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChekBoxPage extends StatefulWidget {
  const ChekBoxPage({Key? key});

  @override
  State<ChekBoxPage> createState() => _ChekBoxPageState();
}

class _ChekBoxPageState extends State<ChekBoxPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Checkbox Example')),
      body: Center(
        child: BlocBuilder<ChekBoxBloc, ChekBoxState>(
          builder: (context, state) {
            if (state is ChekBoxInitial) {
              return Checkbox(
                value: state.val,
                onChanged: (_) {
                  BlocProvider.of<ChekBoxBloc>(context).add(ChangeChekBox());
                },
              );
            }
            return const SizedBox();
          },
        ),
      ),
    );
  }
}*/
