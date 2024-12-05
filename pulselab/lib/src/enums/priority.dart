enum Priority {
  normal(
    description: "Normal",
  ),
  high(
    description: "Alta",
  ),
  emergency(
    description: "Emergência",
  );

  const Priority({
    required this.description,
  });

  final String description;
}
