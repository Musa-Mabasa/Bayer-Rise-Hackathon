import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfWelcome extends StatefulWidget {
  const ProfWelcome({Key? key}) : super(key: key);

  @override
  ProfWelcomeState createState() => ProfWelcomeState();
}

class ProfWelcomeState extends State<ProfWelcome> {
  int selectedTool = 0;

  List<dynamic> tools = [
    {
      'image': 'https://cdn-icons-png.flaticon.com/128/732/732244.png',
      'selected_image': 'https://cdn-icons-png.flaticon.com/128/732/732244.png',
      'name': 'Monthly',
      'money': 'R110/month',
      'description': 'You will be charged R110 every month, cancel anytime.'
    },
    {
      'image': 'https://img.icons8.com/color/2x/adobe-xd.png',
      'selected_image': 'https://img.icons8.com/color/2x/adobe-xd--v2.gif',
      'name': 'Annually',
      'money': 'R1000/year',
      'description': 'You will be charged R1000 every year, cancel anytime.'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome to Zoe'),
        centerTitle: true,
        backgroundColor: const Color(0xFFff6666),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 200),
            SizedBox(
                width: 200,
                height: 150,
                child: SvgPicture.asset('assets/undraw_savings_re_eq4w.svg')),
            const SizedBox(height: 20),
            const Text(
              'Check out our subscription plans!',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => showModalBottomSheet(
                  context: context, builder: (context) => buildSheet()),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFff6666),
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32.0),
                ),
              ),
              child: const Text('Subscription Plans'),
            ),
            const SizedBox(height: 20),
            Text(
                'You will get access to features that allow you to care for and to find patients. ',
                textAlign: TextAlign.center,
                style: GoogleFonts.lato())
          ],
        ),
      ),
    );
  }

  Widget buildSheet() => SizedBox(
        height: 500,
        child: Column(
          children: [
            const SizedBox(height: 10),
            Text(
              'Choose your plan',
              style:
                  GoogleFonts.lato(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Container(
              padding: EdgeInsets.all(20),
              height: 400,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.4,
                    child: ListView.builder(
                      itemCount: tools.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedTool = index;
                            });
                          },
                          child: SizedBox(
                            height: 170,
                            child: AnimatedContainer(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 10),
                              margin: const EdgeInsets.only(bottom: 20),
                              duration: Duration(milliseconds: 500),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(
                                      color: selectedTool == index
                                          ? Colors.blue
                                          : Colors.white.withOpacity(0),
                                      width: 2),
                                  boxShadow: [
                                    selectedTool == index
                                        ? BoxShadow(
                                            color: Colors.blue.shade100,
                                            offset: Offset(0, 3),
                                            blurRadius: 10)
                                        : BoxShadow(
                                            color: Colors.grey.shade200,
                                            offset: Offset(0, 3),
                                            blurRadius: 10)
                                  ]),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          tools[index]['name'],
                                          style: TextStyle(
                                              color: Colors.grey.shade400,
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          tools[index]['money'],
                                          style: const TextStyle(
                                              color: Colors.black,
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          '1 week free Trial',
                                          style: TextStyle(
                                            color: Colors.green,
                                            backgroundColor:
                                                Colors.green.withOpacity(0.2),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          tools[index]['description'],
                                          style: TextStyle(
                                            color: Colors.grey.shade600,
                                            fontSize: 14,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Icon(
                                    Icons.check_circle,
                                    color: selectedTool == index
                                        ? Colors.blue
                                        : Colors.white,
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      );
}
