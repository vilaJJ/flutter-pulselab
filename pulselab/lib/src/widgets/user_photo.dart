import 'package:flutter/material.dart';

class UserPhoto extends StatelessWidget {
  const UserPhoto({
    super.key,
    this.photoUrl,
  });

  final String? photoUrl;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Theme.of(context).primaryColor,
      foregroundImage: photoUrl != null ? AssetImage(photoUrl!) : null,
      radius: 32,
      child: const Icon(
        Icons.account_circle_outlined,
        size: 32,
        color: Colors.white,
      ),
    );
  }
}
