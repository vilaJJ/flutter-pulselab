import 'package:flutter/material.dart';
import 'package:pulselab/src/utilities/extensions/date_time_extensions.dart';
import 'package:pulselab/src/viewmodel/donations_view_model.dart';
import 'package:pulselab/src/widgets/empty_list.dart';
import 'package:pulselab/src/widgets/loading_adviser.dart';
import 'package:pulselab/src/widgets/search_title.dart';

class DonationsView extends StatefulWidget {
  const DonationsView({super.key});

  @override
  State<DonationsView> createState() => _DonationsViewState();
}

class _DonationsViewState extends State<DonationsView> {
  final viewModel = DonationsViewModel();
  static const defaultPadding = EdgeInsets.fromLTRB(16, 16, 16, 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: defaultPadding,
        child: Column(
          children: [
            const SearchTitle(
              title: "Ajude pessoas que precisam de doações de sangue",
            ),
            const Divider(),
            FutureBuilder(
              future: viewModel.getAllBloodDonationRecipient(),
              builder: (context, snapshot) {
                final connectionState = snapshot.connectionState;

                if (connectionState == ConnectionState.waiting) {
                  return const Expanded(
                    child: LoadingAdviser(),
                  );
                }

                if (connectionState != ConnectionState.done || snapshot.requireData.isEmpty) {
                  return const Expanded(
                    child: EmptyList(text: "Não foram encontrados dados de pessoas que precisam receber doação de sangue."),
                  );
                }

                final bloodDonationRecipientList = snapshot.requireData;

                return Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: bloodDonationRecipientList.length,
                    itemBuilder: (context, index) {
                      final bloodDonationRecipient = bloodDonationRecipientList[index];
                      final color = bloodDonationRecipient.patient.priority.color.shade100;
                      final name = bloodDonationRecipient.patient.name;
                      final bloodType = bloodDonationRecipient.patient.bloodType?.description;
                      final waitingSince = "Aguardando desde ${bloodDonationRecipient.createdOn.brazilianFormat}";

                      return Card(
                        color: color,
                        child: ListTile(
                          onTap: () {},
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          title: Text(
                            name,
                          ),
                          subtitle: Text(
                            waitingSince,
                            style: const TextStyle(
                              fontSize: 12,
                            ),
                          ),
                          trailing: bloodType != null
                              ? Text(
                                  bloodType,
                                  style: TextStyle(
                                    color: Theme.of(context).primaryColor,
                                    fontWeight: FontWeight.w900,
                                    fontSize: 18,
                                  ),
                                )
                              : null,
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
}
