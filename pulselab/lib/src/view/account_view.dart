import 'package:flutter/material.dart';
import 'package:pulselab/src/model/user_model.dart';
import 'package:pulselab/src/widgets/blood_type_label.dart';
import 'package:pulselab/src/widgets/icon_text_button.dart';
import 'package:pulselab/src/widgets/icon_text_label.dart';
import 'package:pulselab/src/widgets/information_not_found_adviser.dart';
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
              BloodTypeLabel(
                bloodType: user.bloodType,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconTextLabel(
                      data: user.age,
                      icon: Icons.cake_rounded,
                      title: "Idade",
                    ),
                    IconTextLabel(
                      data: "${user.weight} kg",
                      icon: Icons.monitor_weight_rounded,
                      title: "Peso",
                    ),
                    IconTextLabel(
                      data: "${user.height} m",
                      icon: Icons.height_outlined,
                      title: "Altura",
                    ),
                  ],
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
                        onPressed: () {},
                        icon: Icons.calendar_month_outlined,
                        title: "Histórico de agendamentos",
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: IconTextButton(
                        onPressed: () {},
                        icon: Icons.abc,
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
}
