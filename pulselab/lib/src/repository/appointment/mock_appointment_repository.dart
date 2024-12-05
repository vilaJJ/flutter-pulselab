import 'package:pulselab/src/enums/appointment_type.dart';
import 'package:pulselab/src/enums/blood_type.dart';
import 'package:pulselab/src/enums/gender.dart';
import 'package:pulselab/src/model/appointments/appointment_model.dart';
import 'package:pulselab/src/model/people/doctor_model.dart';
import 'package:pulselab/src/model/people/patient_model.dart';
import 'package:pulselab/src/repository/appointment/appointment_repository.dart';

class MockAppointmentRepository implements AppointmentRepository {
  static final _data = <AppointmentModel>[
    AppointmentModel(
      id: "90c17aed-6dfd-4454-a42c-3fd36f243fa5",
      type: AppointmentType.exam,
      name: "Hemograma",
      description: "Hemograma é um exame que avalia as células sanguíneas de um paciente, ou seja, as da série branca e vermelha, contagem de plaquetas, reticulócitos e índices hematológicos. O exame é requerido pelo profissional de saúde para diagnosticar ou controlar a evolução de uma doença. Um hemograma é constituído pela contagem das células brancas (leucócitos), células vermelhas (hemácias), hemoglobina (Hb), hematócrito (Ht), índices das células vermelhas, e contagem de plaquetas. Hemograma Completo consiste do hemograma mais a contagem diferencial dos leucócitos.",
      patient: PatientModel(
        id: "ee52c78b-a95c-424d-9dac-1eae79732f3c",
        name: "Rodrigo Ian Moreira",
        weight: 101,
        height: 1.61,
        birthdate: DateTime(1964, 10, 1),
        bloodType: BloodType.abPositive,
      ),
      doctor: DoctorModel(
        id: "bb2682ab-1ad8-49ec-8f2f-680a96f2467a",
        name: "Bárbara Rebeca da Cruz",
        birthdate: DateTime(1973, 10, 23),
        gender: Gender.female,
      ),
      createdOn: DateTime(2024, 11, 28),
      dateTime: DateTime(2024, 12, 13),
    ),
    AppointmentModel(
      id: "a9fca93a-6fa7-4384-8420-183490862ad2",
      type: AppointmentType.surgery,
      name: "Transfusão",
      description: "Transfusão é o ato médico de transferir um sangue ou hemocomponentes deste (plasma sanguíneo, plaquetas, hemácias e leucócitos) de um doador para o sistema circulatório de um receptor. Para o sucesso do procedimento, é necessário haver uma compatibilização entre os agentes. É um tipo de terapia que tem se mostrado muito eficaz em situações de choque, hemorragias ou doenças sanguíneas. Frequentemente usa-se transfusão em intervenções cirúrgicas, traumatismos, hemorragias digestivas ou em outros casos em que tenha havido grande perda de sangue.",
      patient: PatientModel(
        id: "ee52c78b-a95c-424d-9dac-1eae79732f3c",
        name: "Rodrigo Ian Moreira",
        weight: 101,
        height: 1.61,
        birthdate: DateTime(1964, 10, 1),
        bloodType: BloodType.abPositive,
      ),
      doctor: DoctorModel(
        id: "44242084-d014-43fc-b9ae-3efe049f98cd",
        name: "Jennifer Isabelly Gomes",
        birthdate: DateTime(1998, 7, 24),
        gender: Gender.female,
      ),
      createdOn: DateTime(2024, 12, 1),
      dateTime: DateTime(2024, 12, 23),
    ),
  ];

  @override
  Future<List<AppointmentModel>> getAll() async {
    return await Future<List<AppointmentModel>>.value(_data);
  }

  @override
  Future<AppointmentModel?> getById(String id) async {
    final appointment = _data.where((appointment) => appointment.id == id).firstOrNull;
    return await Future<AppointmentModel>.value(appointment);
  }
}
