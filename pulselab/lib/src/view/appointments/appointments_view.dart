import 'package:flutter/material.dart';
import 'package:pulselab/src/model/appointments/appointment_model.dart';
import 'package:pulselab/src/utilities/extensions/date_time_extensions.dart';
import 'package:pulselab/src/viewmodel/appointments/appointments_view_model.dart';
import 'package:pulselab/src/widgets/empty_list.dart';
import 'package:pulselab/src/widgets/loading_adviser.dart';
import 'package:pulselab/src/widgets/search_title.dart';

class AppointmentsView extends StatefulWidget {
  const AppointmentsView({super.key});

  @override
  State<AppointmentsView> createState() => _AppointmentsViewState();
}

class _AppointmentsViewState extends State<AppointmentsView> {
  final viewModel = AppointmentsViewModel();
  static const defaultPadding = EdgeInsets.fromLTRB(16, 16, 16, 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: defaultPadding,
        child: Column(
          children: [
            const SearchTitle(
              title: "Próximos agendamentos",
            ),
            const Divider(),
            FutureBuilder(
              future: viewModel.getUserAppointments(),
              builder: (context, snapshot) {
                final connectionState = snapshot.connectionState;

                if (connectionState == ConnectionState.waiting) {
                  return const Expanded(
                    child: LoadingAdviser(),
                  );
                }

                if (connectionState != ConnectionState.done || snapshot.requireData.isEmpty) {
                  return const Expanded(
                    child: EmptyList(text: "Não foram encontrados dados de agendamentos."),
                  );
                }

                final userAppointmentList = snapshot.requireData;

                return Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: userAppointmentList.length,
                    itemBuilder: (context, index) {
                      final userAppointment = userAppointmentList[index];
                      final name = userAppointment.name;
                      final appointmentTypeDescription = userAppointment.type.description;
                      final date = userAppointment.dateTime.brazilianFormat;

                      return Card(
                        child: ListTile(
                          onTap: () async => await _onAppointmentCardPressed(userAppointment),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          title: Text(
                            name,
                            style: const TextStyle(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          trailing: Text(
                            appointmentTypeDescription,
                            style: const TextStyle(
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(date),
                                  const Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 2),
                                  ),
                                  const Icon(Icons.calendar_month),
                                ],
                              ),
                              Text(
                                userAppointment.doctor.presentationName,
                                style: const TextStyle(
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _onAppointmentCardPressed(AppointmentModel appointment) async {}
}
