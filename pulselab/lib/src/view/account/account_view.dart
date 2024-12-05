import 'package:flutter/material.dart';
import 'package:pulselab/src/model/user_model.dart';
import 'package:pulselab/src/view/account/my_donations_view.dart';
import 'package:pulselab/src/widgets/icon_text_button.dart';
import 'package:pulselab/src/widgets/information_not_found_adviser.dart';
import 'package:pulselab/src/widgets/person_details.dart';
import 'package:pulselab/src/widgets/pulse_lab_icons.dart';
import 'package:pulselab/src/widgets/user_photo.dart';

class AccountView extends StatefulWidget {
  const AccountView({
    super.key,
    required this.user,
  });

  final UserModel? user;

  @override
  State<AccountView> createState() => _AccountViewState();
}

class _AccountViewState extends State<AccountView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(
        builder: (context) {
          final user = widget.user;

          if (user == null) {
            return const Center(
              child: InformationNotFoundAdviser(),
            );
          }
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ListTile(
                onTap: _onUserTileTap,
                leading: UserPhoto(
                  photoUrl: user.photoUrl,
                ),
                title: Text(user.name),
                subtitle: Text(user.emailAddress),
                trailing: const Icon(Icons.arrow_forward_ios),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                child: PersonDetails(
                  person: user,
                ),
              ),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: IconTextButton(
                        onPressed: _onAppointmentsHistoryPressed,
                        icon: Icons.calendar_month_outlined,
                        title: "Histórico de agendamentos",
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: IconTextButton(
                        onPressed: _onMyDonationsPressed,
                        icon: PulseLabIcons.donation,
                        title: "Minhas doações",
                      ),
                    ),
                  ],
                ),
              )
            ],
          );
        },
      ),
    );
  }

  void _onUserTileTap() {}

  void _onAppointmentsHistoryPressed() {}

  void _onMyDonationsPressed() async {
    await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const MyDonationsView(),
      ),
    );
  }
}
