import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:laza/cubit/log&sign_state.dart';
import 'package:laza/model/login_model.dart';

class LoginCubit extends Cubit<Log_signState>{
  LoginCubit():super(InitialState());


   void login(LoginModel loginmodel)async{
     if(loginmodel.email.isEmpty||loginmodel.password.isEmpty){
      emit(Log_signError("Please enter email and password"));
    }
    else if(!RegExp(r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]+$")
        .hasMatch(loginmodel.email)) {
      emit(Log_signError("please enter vaild email"));
    }
    else if(loginmodel.password.length<5){
      emit(Log_signError("password should be at least 5 characters"));
    }

    else{
      emit(Log_signLoading());
      await Future.delayed(Duration(seconds: 2));
      emit(Log_signSuccess());
    }
  }
}
