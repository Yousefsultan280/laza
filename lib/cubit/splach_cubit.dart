import 'package:flutter_bloc/flutter_bloc.dart';

class GenderSelection extends Cubit<bool>{
  GenderSelection():super(false);

  void toggleGender(){
    emit(!state);
  }
}