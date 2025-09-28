import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'state_providers.g.dart';



@Riverpod(keepAlive: true)
class Counter extends _$Counter {

  @override
  int build() => 0;

  void increaseByOne() {
    state ++;
  }
}
  

// DarkMode -> boolean default: false
// void toggleDarkMode()
@riverpod
class DarkMode extends _$DarkMode {

  @override
  bool build() => false;

  void toggleDarkMode() {
    state = !state;
  }
}


//String Username => String
//Deafault: 'Jorge Sánchez'
//changedName(String name)
// usernameProvider.notifier.changeName ( RandomGenerator.getRandomName() )
@Riverpod(keepAlive: true)
class Username extends _$Username {

  @override
  String build() => 'Meslissa Flores';

  void changedName( String name ) {
    state = name;
  }
}