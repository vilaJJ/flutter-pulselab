import 'package:flutter/material.dart';
import 'package:pulselab/src/model/blood_donation_recipient_model.dart';
import 'package:pulselab/src/model/patient_model.dart';
import 'package:pulselab/src/viewmodel/donations/blood_donation_recipient_details_view_model.dart';
import 'package:pulselab/src/widgets/person_details.dart';
import 'package:pulselab/src/widgets/text_label.dart';

class BloodDonationRecipientDetailsView extends StatefulWidget {
  const BloodDonationRecipientDetailsView({
    super.key,
    required this.bloodDonationRecipient,
  });

  final BloodDonationRecipientModel bloodDonationRecipient;

  @override
  State<BloodDonationRecipientDetailsView> createState() => _BloodDonationRecipientDetailsViewState();
}

class _BloodDonationRecipientDetailsViewState extends State<BloodDonationRecipientDetailsView> {
  final viewModel = BloodDonationRecipientDetailsViewModel();

  late final PatientModel patient;
  late final String? healthIssueDescription;
  late final bool? canUserDonateToPatient;

  @override
  void initState() {
    super.initState();
    _loadInitialValues();
  }

  @override
  Widget build(BuildContext context) {
    final priority = patient.priority;

    return Scaffold(
      appBar: AppBar(
        elevation: 8,
        title: const Text("Pedido de doação"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    patient.name,
                    style: const TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 18,
                    ),
                  ),
                ),
                TextLabel(
                  data: priority.description,
                  dataColor: priority.color,
                  title: "Prioridade",
                ),
              ],
            ),
            const Divider(),
            PersonDetails(
              person: patient,
            ),
            Visibility(
              visible: healthIssueDescription != null,
              child: Padding(
                padding: const EdgeInsets.only(top: 24.0),
                child: TextField(
                  controller: TextEditingController(text: healthIssueDescription),
                  readOnly: true,
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    labelText: "Descrição do problema de saúde",
                  ),
                ),
              ),
            ),
            Visibility(
              visible: canUserDonateToPatient == false,
              child: Padding(
                padding: const EdgeInsets.only(top: 16),
                child: ListTile(
                  shape: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide(
                      color: Colors.amber.shade900,
                    ),
                  ),
                  leading: Icon(
                    Icons.warning_amber_rounded,
                    color: Colors.amber.shade900,
                  ),
                  title: const Text(
                    "Você não pode realizar esta doação.",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  subtitle: Text(
                    viewModel.getBloodTextMismatch(patient.bloodType),
                    style: const TextStyle(
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: SizedBox(
                width: 250,
                height: 50,
                child: ElevatedButton.icon(
                  onPressed: canUserDonateToPatient == true ? () {} : null,
                  icon: const Icon(Icons.calendar_month_outlined),
                  label: const Text("Agendar doação"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _loadInitialValues() {
    patient = widget.bloodDonationRecipient.patient;
    healthIssueDescription = widget.bloodDonationRecipient.healthIssueDescription;
    canUserDonateToPatient = viewModel.validateIfUserCanDonateToPatient(patient.bloodType);
  }
}
