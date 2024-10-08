import 'package:flutter/material.dart';

final class ScheduleServiceModel {
  const ScheduleServiceModel({
    this.nameTutor,
    this.emailTutor,
    this.namePet,
    this.typePet,
    this.breedPet,
    this.datePet,
    this.sizePet,
    this.genderPet,
    this.colorPet,
  });

  final String? nameTutor;
  final String? emailTutor;

  final String? namePet;
  final String? typePet;
  final String? breedPet;
  final String? datePet;
  final String? sizePet;
  final String? genderPet;
  final String? colorPet;

  ScheduleServiceModel clear() {
    return copyWith(
      nameTutor: () => null,
      emailTutor: () => null,
      namePet: () => null,
      typePet: () => null,
      breedPet: () => null,
      datePet: () => null,
      sizePet: () => null,
      genderPet: () => null,
      colorPet: () => null,
    );
  }

  ScheduleServiceModel copyWith({
    ValueGetter<String?>? nameTutor,
    ValueGetter<String?>? emailTutor,
    ValueGetter<String?>? namePet,
    ValueGetter<String?>? typePet,
    ValueGetter<String?>? breedPet,
    ValueGetter<String?>? datePet,
    ValueGetter<String?>? sizePet,
    ValueGetter<String?>? genderPet,
    ValueGetter<String?>? colorPet,
  }) {
    return ScheduleServiceModel(
      nameTutor: nameTutor != null ? nameTutor() : this.nameTutor,
      emailTutor: emailTutor != null ? emailTutor() : this.emailTutor,
      namePet: namePet != null ? namePet() : this.namePet,
      typePet: typePet != null ? typePet() : this.typePet,
      breedPet: breedPet != null ? breedPet() : this.breedPet,
      datePet: datePet != null ? datePet() : this.datePet,
      sizePet: sizePet != null ? sizePet() : this.sizePet,
      genderPet: genderPet != null ? genderPet() : this.genderPet,
      colorPet: colorPet != null ? colorPet() : this.colorPet,
    );
  }
}
