import 'package:ramdemo/bloc/event.dart';
import 'package:ramdemo/bloc/state.dart';
import 'package:bloc/bloc.dart';
import 'package:ramdemo/services/login_services.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final loginService = LoginService();
  @override
  LoginState get initialState => LoginStateDefault();

  @override
  Stream<LoginState> mapEventToState(LoginEvent event) async* {
    if (event is LoginButtonPressedEvent) {
      yield* _mapLoginState(event);
    }
  }

  Stream<LoginState> _mapLoginState(LoginButtonPressedEvent event) async* {
    try {
      yield LoginStateLoading();
      var result = await loginService.login(event.username, event.password);
      yield LoginStateSuccess(data: result);
    } catch (e) {
      yield LoginStateError();
    }
  }
}
