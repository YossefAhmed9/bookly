abstract class BooklyStates {}

class BooklyInitState extends BooklyStates {}

class BooklyGetDataLoadingState extends BooklyStates {}

class BooklyGetDataDoneState extends BooklyStates {}

class BooklyGetDataErrorState extends BooklyStates {
  final error;

  BooklyGetDataErrorState(this.error);
}

class GoToHomeScreen extends BooklyStates{}
