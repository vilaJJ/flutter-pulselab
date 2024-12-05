enum Gender {
  male(
    description: "Masculino",
  ),
  female(
    description: "Feminino",
  );

  const Gender({
    required this.description,
  });

  final String description;

  String get acronym {
    return description[0];
  }
}
