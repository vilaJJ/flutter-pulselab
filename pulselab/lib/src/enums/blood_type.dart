enum BloodType {
  aPositive(
    description: "A+",
    canDonateTo: [
      BloodType.abPositive,
    ],
  ),
  aNegative(
    description: "A-",
    canDonateTo: [
      BloodType.aPositive,
      BloodType.abPositive,
      BloodType.abNegative,
    ],
  ),
  bPositive(
    description: "B+",
    canDonateTo: [
      BloodType.abPositive,
    ],
  ),
  bNegative(
    description: "B-",
    canDonateTo: [
      BloodType.bPositive,
      BloodType.abPositive,
      BloodType.abNegative,
    ],
  ),
  abPositive(
    description: "AB+",
    canDonateTo: [],
  ),
  abNegative(
    description: "AB-",
    canDonateTo: [
      BloodType.abPositive,
    ],
  ),
  oPositive(
    description: "O+",
    canDonateTo: [
      BloodType.aPositive,
      BloodType.bNegative,
      BloodType.abPositive,
    ],
  ),
  oNegative(
    description: "O-",
    canDonateTo: [
      BloodType.aPositive,
      BloodType.aNegative,
      BloodType.bPositive,
      BloodType.bNegative,
      BloodType.abPositive,
      BloodType.abNegative,
      BloodType.oPositive,
    ],
  );

  const BloodType({
    required this.description,
    required this.canDonateTo,
  });

  final String description;
  final List<BloodType> canDonateTo;

  bool validateCanDonateTo(BloodType bloodType) {
    if (this == bloodType) {
      return true;
    }

    return canDonateTo.contains(bloodType);
  }
}
