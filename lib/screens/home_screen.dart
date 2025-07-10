import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF220388), Color(0xFFD0C3FC)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          children: [
            const SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  const CircleAvatar(
                    backgroundImage: NetworkImage(
                      'https://img.freepik.com/free-psd/3d-rendering-hair-style-avatar-design_23-2151869121.jpg?semt=ais_hybrid',
                    ),
                    radius: 25,
                  ),
                  const Spacer(),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Row(
                      children: [
                        Icon(
                          Icons.local_fire_department,
                          color: Colors.orangeAccent,
                        ),
                        SizedBox(width: 4),
                        Text(
                          'Streak',
                          style: TextStyle(
                            color: Color.fromARGB(255, 145, 144, 224),
                          ),
                        ),
                        SizedBox(width: 4),
                        Text(
                          '432',
                          style: TextStyle(
                            color: Color.fromARGB(255, 50, 46, 46),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: const BoxDecoration(
                      color: Color(0xFFF1EDFF),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.notifications,
                      color: Color.fromARGB(255, 77, 17, 217),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Hey Elizabeth Latte !',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Welcome back! Ready to learn today?',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(30),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.deepPurple.shade100.withOpacity(0.5),
                      blurRadius: 15,
                      spreadRadius: 2,
                      offset: const Offset(3, -10),
                    ),
                    BoxShadow(
                      color: const Color.fromARGB(
                        255,
                        231,
                        232,
                        237,
                      ).withOpacity(0.4),
                      blurRadius: 20,
                      spreadRadius: 4,
                      offset: const Offset(0, -10),
                    ),
                  ],
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                     
                      Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 12,
                          horizontal: 8,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.deepPurple.shade50,
                          borderRadius: BorderRadius.circular(40),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.deepPurple.shade100.withOpacity(
                                0.3,
                              ),
                              blurRadius: 8,
                              offset: const Offset(0, 4),
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            infoCard('432 Rank', '45th position', Icons.bolt),
                            const SizedBox(width: 16),
                            infoCard('2345 XP', 'Top among 456!', Icons.star),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),

                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Row(
                          children: [
                            Text(
                              "Let's power up your XP! ",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Icon(
                              Icons.star,
                              color: Color.fromARGB(255, 233, 210, 5),
                              size: 20,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),

                    
                      Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.deepPurple.shade50,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: const [
                                Expanded(
                                  child: Text(
                                    "Today's Quest\nLevel 1 - Introduction",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                                CircleAvatar(
                                  backgroundColor: Colors.amber,
                                  radius: 30,
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                      vertical: 8.0,
                                      horizontal: 6.0,
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: Colors.white,
                                          size: 20,
                                        ),
                                        SizedBox(height: 6),
                                        Text(
                                          'Level-1',
                                          style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              'Complete it to earn XP and unlock rewards!',
                            ),
                            const SizedBox(height: 10),
                            SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.deepPurple,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 14,
                                  ),
                                ),
                                child: const Text(
                                  'Get Started on Level - 1',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),

                     
                      Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.deepPurple.shade50,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                           
                            Container(
                              width: 90,
                              height: 90,
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: const Color(0xFFF1EDFF),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  
                                  CircularProgressIndicator(
                                    value: 1,
                                    strokeWidth: 6,
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                      Colors.deepPurple.shade100,
                                    ),
                                  ),
                                 
                                  CircularProgressIndicator(
                                    value: 0.2,
                                    strokeWidth: 6,
                                    valueColor:
                                        const AlwaysStoppedAnimation<Color>(
                                          Color(0xFF5D26C1),
                                        ),
                                    backgroundColor: Colors.transparent,
                                  ),
                                  
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: const [
                                      Text(
                                        'Level 1',
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.grey,
                                        ),
                                      ),
                                      SizedBox(height: 2),
                                      Text(
                                        '1 of 100',
                                        style: TextStyle(
                                          fontSize: 11,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 16),

                          
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Level 1',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  const Text(
                                    'Let the journey begin! Earn XP, beat challenges, and level up fast.',
                                    style: TextStyle(fontSize: 13),
                                  ),
                                  const SizedBox(height: 12),

                                  // Navigation
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: const [
                                      Icon(
                                        Icons.arrow_back_ios,
                                        size: 16,
                                        color: Colors.grey,
                                      ),
                                      Text(
                                        'Previous',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.grey,
                                        ),
                                      ),
                                      SizedBox(width: 20),
                                      Text(
                                        'Next',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.blue,
                                        ),
                                      ),
                                      SizedBox(width: 8),
                                      Icon(
                                        Icons.arrow_forward_ios,
                                        size: 16,
                                        color: Colors.blue,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 20),

                    
                      Positioned(
                        bottom: 20,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 5,
                            vertical: 7,
                          ), // Added padding
                          margin: const EdgeInsets.symmetric(
                            horizontal: 45,
                            vertical: 25,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                spreadRadius: 2,
                                blurRadius: 9,
                                offset: const Offset(0, 4),
                              ),
                            ],
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: const [
                              _BottomNavIcon(
                                Icons.school,
                                bgColor: Colors.white,
                                iconColor: Colors.grey,
                              ),
                              _BottomNavIcon(
                                Icons.home,
                                bgColor: Colors.white,
                                iconColor: Colors.grey,
                              ),
                              _BottomNavIcon(
                                Icons.person,
                                bgColor: Color.fromARGB(231, 114, 48, 230),
                                iconColor: Colors.white,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

 
  Widget infoCard(String title, String subtitle, IconData icon) {
    // Split title into number and label
    final parts = title.split(' ');
    final number = parts[0];
    final label = parts.sublist(1).join(' ');

    return Container(
      padding: const EdgeInsets.all(5),
      child: Row(
        children: [
          
          Container(
            padding: const EdgeInsets.all(8),
            decoration: const BoxDecoration(
              color: Colors.deepPurple,
              shape: BoxShape.circle,
            ),
            child: Icon(icon, color: Colors.white),
          ),
          const SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  style: const TextStyle(fontSize: 14),
                  children: [
                    TextSpan(
                      text: '$number ',
                      style: const TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: label,
                      style: const TextStyle(
                        color: Colors.deepPurple,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                subtitle,
                style: const TextStyle(fontSize: 12, color: Colors.grey),
              ),
            ],
          ),
        ],
      ),
    );
  }
}


class _BottomNavIcon extends StatefulWidget {
  final IconData icon;
  final Color bgColor;
  final Color iconColor;

  const _BottomNavIcon(
    this.icon, {
    required this.bgColor,
    required this.iconColor,
  });

  @override
  State<_BottomNavIcon> createState() => _BottomNavIconState();
}

class _BottomNavIconState extends State<_BottomNavIcon> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: _isHovered ? widget.bgColor.withOpacity(0.8) : widget.bgColor,
          shape: BoxShape.circle,
          boxShadow: _isHovered
              ? [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 8,
                    offset: Offset(0, 4),
                  ),
                ]
              : [],
        ),
        child: Icon(widget.icon, size: 25, color: widget.iconColor),
      ),
    );
  }
}

class LevelProgressWidget extends StatelessWidget {
  final double progress;
  const LevelProgressWidget({super.key, required this.progress});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 70,
      padding: const EdgeInsets.all(6),
      decoration: BoxDecoration(
        color: const Color(0xFFF1EDFF),
        // borderRadius: BorderRadius.circular(12),
        // border: Border.all(color: Colors.blueAccent),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          // Background ring
          CircularProgressIndicator(
            value: 1,
            strokeWidth: 6,
            valueColor: AlwaysStoppedAnimation<Color>(
              Colors.deepPurple.shade100,
            ),
          ),
          // Foreground progress
          CircularProgressIndicator(
            value:
                progress,
            strokeWidth: 9,
            valueColor: const AlwaysStoppedAnimation<Color>(
              Color(0xFF5D26C1), // deep purple
            ),
            backgroundColor: Colors.transparent,
          ),
          // Centered Text
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'Level 1',
                style: TextStyle(fontSize: 10, color: Colors.grey),
              ),
              Text(
                '${(progress * 100).toInt()} of 100',
                style: const TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
    
  }
}
