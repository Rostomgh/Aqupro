import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'chek_box_event.dart';
part 'chek_box_state.dart';

class ChekBoxBloc extends Bloc<ChekBoxEvent, ChekBoxState> {
  ChekBoxBloc() : super(ChekBoxInitial(val: false)) {
  
    on<ChekBoxEvent>((event, emit) {
      if (event is ChangeChekBox) {
        final newval=state as ChekBoxInitial;
        emit(ChekBoxInitial(val:!newval.val ));
      }
    });
  }
}
