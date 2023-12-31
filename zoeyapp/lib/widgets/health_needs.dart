// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:zoeyapp/pages/period.dart';

import '../home.dart';
import '../info.dart';

class HealthNeeds extends StatelessWidget {
  const HealthNeeds({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<CustomIcon> customIcons = [
      CustomIcon(name: "Pharmacy", icon: 'assets/drug.png'),
      CustomIcon(name: "Hospital", icon: 'assets/hospital.png'),
      CustomIcon(name: "Period", icon: 'assets/period.png'),
      CustomIcon(name: "More", icon: 'assets/more.png'),
    ];
    List<CustomIcon> healthNeeds = [
      CustomIcon(name: "Pharmacy", icon: 'assets/drug.png'),
      CustomIcon(name: "Hospital", icon: 'assets/hospital.png'),
      CustomIcon(name: "Period", icon: 'assets/period.png'),
      CustomIcon(name: "Learn", icon: 'assets/learn.png'),
    ];
    List<CustomIcon> specialisedCared = [
      CustomIcon(name: "Diabetes", icon: 'assets/blood.png'),
      CustomIcon(name: "Health Care", icon: 'assets/health_care.png'),
      CustomIcon(name: "Dental", icon: 'assets/tooth.png'),
      CustomIcon(name: "Insured", icon: 'assets/insurance.png'),
    ];

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(customIcons.length, (index) {
        return Column(
          children: [
            InkWell(
              onTap: () {
                if (index == 0) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Home(),
                    ),
                  );
                }
                if (index == 2) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Period(),
                    ),
                  );
                }
                if (index == customIcons.length - 1) {
                  showModalBottomSheet(
                    context: context,
                    showDragHandle: true,
                    builder: (context) {
                      return Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(20),
                        height: 350,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // HEALTH NEEDS SECTION
                            Text(
                              "Health Needs",
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                            const SizedBox(height: 15),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: List.generate(
                                healthNeeds.length,
                                (index) {
                                  return Column(
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          if (index == 2) {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    const Period(),
                                              ),
                                            );
                                          }
                                          if (index == 3) {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    const Info(),
                                              ),
                                            );
                                          }
                                          if(index == 0) {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) => const Home(),
                                              ),
                                            );
                                          }
                                        },
                                        borderRadius: BorderRadius.circular(90),
                                        child: Container(
                                          width: 60,
                                          height: 60,
                                          padding: const EdgeInsets.all(15),
                                          decoration: const BoxDecoration(
                                            color: Color(0xFF001c30),
                                            shape: BoxShape.circle,
                                          ),
                                          child: Image.asset(
                                            healthNeeds[index].icon,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 6),
                                      Text(healthNeeds[index].name)
                                    ],
                                  );
                                },
                              ),
                            ),
                            SizedBox(height: 30),
                            // SPECIALISED CARE SECTION

                            Text(
                              "Specialised Care",
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                            const SizedBox(height: 15),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: List.generate(
                                specialisedCared.length,
                                (index) {
                                  return Column(
                                    children: [
                                      InkWell(
                                        onTap: () {},
                                        borderRadius: BorderRadius.circular(90),
                                        child: Container(
                                          width: 60,
                                          height: 60,
                                          padding: const EdgeInsets.all(15),
                                          decoration: const BoxDecoration(
                                            color: Color(0xFF001c30),
                                            shape: BoxShape.circle,
                                          ),
                                          child: Image.asset(
                                            specialisedCared[index].icon,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 6),
                                      Text(specialisedCared[index].name)
                                    ],
                                  );
                                },
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  );
                }
              },
              borderRadius: BorderRadius.circular(90),
              child: Container(
                width: 60,
                height: 60,
                padding: const EdgeInsets.all(15),
                decoration: const BoxDecoration(
                  color: Color(0xFF001c30),
                  shape: BoxShape.circle,
                ),
                child: Image.asset(
                  customIcons[index].icon,
                ),
              ),
            ),
            const SizedBox(height: 6),
            Text(customIcons[index].name)
          ],
        );
      }),
    );
  }
}

class CustomIcon {
  final String name;
  final String icon;

  CustomIcon({
    required this.name,
    required this.icon,
  });
}
