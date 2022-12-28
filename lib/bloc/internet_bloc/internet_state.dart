abstract class InternetState {}

class InternetInitializeState extends InternetState {
  //it use when our page is being load then it will emit
}

class InternetLostState extends InternetState {}

class InternetGainedState extends InternetState {}
