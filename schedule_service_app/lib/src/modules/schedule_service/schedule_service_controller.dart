import 'package:schedule_service_app/src/model/schedule_service_model.dart';
import 'package:schedule_service_core/schedule_service_core.dart';
import 'package:signals_flutter/signals_flutter.dart';

enum FormSteps {
  none,
  userPet,
  servicesPet,
  petshops,
  cart,
  checkout,
  restart,
}

class ScheduleServiceController with MessageStateMixin {
  final _step = ValueSignal(FormSteps.none);
  var _model = const ScheduleServiceModel();
  ScheduleServiceModel get model => _model;

  FormSteps get step => _step();

  void startProcess() {
    _step.forceUpdate(FormSteps.servicesPet);
  }

  void setUserPetDataStepAndNext(
    String nameTutor,
    String emailTutor,
    String namePet,
    String typePet,
    String breedPet,
    String datePet,
    String sizePet,
    String genderPet,
    String colorPet,
  ) {
    _model = _model.copyWith(
      nameTutor: () => nameTutor,
      emailTutor: () => emailTutor,
      namePet: () => namePet,
      typePet: () => typePet,
      breedPet: () => breedPet,
      datePet: () => datePet,
      sizePet: () => sizePet,
      genderPet: () => genderPet,
      colorPet: () => colorPet,
    );
    _step.forceUpdate(FormSteps.servicesPet);
  }

  void clearForm() {
    _model = _model.clear();
  }

  void debug() {
    print(_model.nameTutor);
    print(_model.emailTutor);
    print(_model.namePet);
    print(_model.typePet);
    print(_model.breedPet);
    print(_model.datePet);
    print(_model.sizePet);
    print(_model.genderPet);
    print(_model.colorPet);
  }

  void goToPetServices() {
    _step.forceUpdate(FormSteps.servicesPet);
  }

  void goToPetshops() {
    _step.forceUpdate(FormSteps.petshops);
  }

  //void goToForgotPassword() {
  //_step.forceUpdate(FormSteps.userPet);
  //}

  void goToUserPet() {
    _step.forceUpdate(FormSteps.userPet);
  }

  void goToCart() {
    _step.forceUpdate(FormSteps.cart);
  }

  void goToDone() {
    _step.forceUpdate(FormSteps.checkout);}

}
