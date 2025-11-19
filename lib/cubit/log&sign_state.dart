abstract class Log_signState{}
class InitialState extends  Log_signState{}

class Log_signError extends  Log_signState{
  String msg;
  Log_signError(this.msg);
}

class Log_signSuccess extends  Log_signState{}

class Log_signLoading extends Log_signState{}
