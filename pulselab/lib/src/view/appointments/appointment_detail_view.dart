import 'package:flutter/material.dart';
import 'package:pulselab/src/model/appointments/appointment_model.dart';
import 'package:pulselab/src/utilities/extensions/date_time_extensions.dart';

class AppointmentDetailView extends StatefulWidget {
  const AppointmentDetailView({
    super.key,
    required this.appointment,
  });

  final AppointmentModel appointment;

  @override
  State<AppointmentDetailView> createState() => _AppointmentDetailViewState();
}

class _AppointmentDetailViewState extends State<AppointmentDetailView> {
  late final AppointmentModel appointment;

  @override
  void initState() {
    super.initState();
    _loadInitialValues();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 8,
        title: const Text("Detalhes do agendamento"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        appointment.name,
                        style: const TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 18,
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(appointment.dateTime.brazilianFormat),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 2),
                          ),
                          const Icon(Icons.calendar_month),
                        ],
                      ),
                      Text(
                        appointment.doctor.presentationName,
                        style: const TextStyle(
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                ),
                Text(appointment.type.description),
              ],
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: TextField(
                controller: TextEditingController(text: appointment.description),
                readOnly: true,
                keyboardType: TextInputType.multiline,
                maxLines: null,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  labelText: "Descrição do procedimento",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    flex: 1,
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.edit_calendar_outlined),
                      label: const Text("Editar"),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                  ),
                  Expanded(
                    flex: 1,
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.cancel_outlined),
                      label: const Text("Cancelar"),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _loadInitialValues() {
    appointment = widget.appointment;
  }
}
