import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:laza/cubit/log&sign_state.dart';
import 'package:laza/model/signup_model.dart';

class SignupCubit extends Cubit<Log_signState>{
  SignupCubit():super(InitialState());


  void signup(SignupModel signupmodel)async{
    if(signupmodel.email.isEmpty||signupmodel.password.isEmpty||signupmodel.name.isEmpty){
      emit(Log_signError("Please enter name and email and password"));
    }
    else if(!RegExp(r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]+$")
        .hasMatch(signupmodel.email)) {
      emit(Log_signError("please enter vaild email"));
    }
    else if(signupmodel.password.length<5){
      emit(Log_signError("password should be at least 5 characters"));
    }
    else if(signupmodel.name.length<5){
      emit(Log_signError("name should be at least 5 characters"));
    }

    else{
      emit(Log_signLoading());
      await Future.delayed(Duration(seconds: 2));
      emit(Log_signSuccess());
    }
  }
}
