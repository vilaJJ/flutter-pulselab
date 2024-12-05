enum AppointmentType {
  exam(
    description: "Exame",
  ),
  surgery(
    description: "Cirurgia",
  );

  const AppointmentType({
    required this.description,
  });

  final String description;
}
