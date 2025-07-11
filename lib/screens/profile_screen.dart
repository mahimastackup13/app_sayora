import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(34, 3, 136, 1),
              Color.fromRGBO(208, 195, 252, 1),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12),
                child: Row(
                  children: [
                    _circleIcon(
                      Icons.arrow_back,
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                    ),
                    const SizedBox(width: 12),
                    const Expanded(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'My Profile',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    _circleIcon(Icons.settings),
                  ],
                ),
              ),

              // Profile card
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Container(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    children: [
                      const CircleAvatar(
                        radius: 28,
                        backgroundImage: NetworkImage(
                          'https://img.freepik.com/free-psd/3d-rendering-hair-style-avatar-design_23-2151869121.jpg?semt=ais_hybrid',
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Elizabeth Latte !',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text('Level-1 - Introduction',
                                style: TextStyle(color: Colors.white)),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 6),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          children: const [
                            Text(
                              'Streak ',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 98, 84, 225)),
                            ),
                            Icon(Icons.local_fire_department,
                                color: Colors.orangeAccent, size: 18),
                            Text(
                              '432',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 91, 66, 233)),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),

              Gap(12),

              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
                child: Container(
                  color: Colors.white,
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 548,
                        child: Container(
                          margin: const EdgeInsets.symmetric(
                              horizontal: 6, vertical: 5),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: ListView(
                            padding: const EdgeInsets.all(20),
                            children: [
                              const Text(
                                'Personal Information',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal),
                              ),
                              const SizedBox(height: 20),
                              _buildInfoTile(
                                iconWidget: _circleIcon(
                                  Icons.person,
                                  bgColor: const Color(0xFF9E6BFC),
                                  gradient: const LinearGradient(
                                    colors: [
                                      Color.fromRGBO(34, 3, 136, 1),
                                      Color.fromRGBO(208, 195, 252, 1),
                                    ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                  ),
                                ),
                                label: 'Full Name',
                                value: 'Adeena S A',
                                showEdit: true,
                              ),
                              _buildInfoTile(
                                iconWidget: _circleIcon(
                                  Icons.email,
                                  gradient: const LinearGradient(
                                    colors: [
                                      Color.fromRGBO(34, 3, 136, 1),
                                      Color.fromRGBO(208, 195, 252, 1),
                                    ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                  ),
                                ),
                                label: 'Email Address',
                                value: 'adeena@stackmod.io',
                              ),
                              _buildInfoTile(
                                iconWidget: _circleIcon(
                                  Icons.phone,
                                  gradient: const LinearGradient(
                                    colors: [
                                      Color.fromRGBO(34, 3, 136, 1),
                                      Color.fromRGBO(208, 195, 252, 1),
                                    ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                  ),
                                ),
                                label: 'Contact Number',
                                value: '7034567824',
                                showEdit: true,
                              ),
                              _buildInfoTile(
                                iconWidget: _circleIcon(
                                  Icons.star,
                                  gradient: const LinearGradient(
                                    colors: [
                                      Color.fromRGBO(34, 3, 136, 1),
                                      Color.fromRGBO(208, 195, 252, 1),
                                    ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                  ),
                                ),
                                label: 'Current Level',
                                value: 'Level - 1',
                              ),
                              _buildInfoTile(
                                iconWidget: _circleIcon(
                                  Icons.feedback_outlined,
                                  gradient: const LinearGradient(
                                    colors: [
                                      Color.fromRGBO(34, 3, 136, 1),
                                      Color.fromRGBO(208, 195, 252, 1),
                                    ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                  ),
                                ),
                                label: 'Feedback',
                                value: 'Share your thoughts with us',
                                trailingIcon: Icons.send,
                              ),
                              _buildInfoTile(
                                iconWidget: _circleIcon(Icons.logout,
                                    bgColor: Color(0xFFFA4141)),
                                label: 'Logout',
                                value: 'Click here to logout',
                                iconColor: Color.fromARGB(255, 224, 18, 4),
                              ),
                            ],
                          ),
                        ),
                      ),

                      // Bottom navigation bar with active icon highlight
                      StatefulBuilder(
                        builder: (context, setState) {
                          int? selectedIndex;

                          return Container(
                            height: 60,
                            width: 250,
                            margin: const EdgeInsets.symmetric(
                                horizontal: 40, vertical: 8),
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
                              children: [
                                IconButton(
                                  onPressed: () =>
                                      setState(() => selectedIndex = 0),
                                  icon: _circleIcon(
                                    Icons.school,
                                    bgColor: selectedIndex == 0
                                        ? const Color(0xFF9E6BFC)
                                        : Colors.white,
                                  ),
                                ),
                                IconButton(
                                  onPressed: () =>
                                      setState(() => selectedIndex = 1),
                                  icon: _circleIcon(
                                    Icons.home,
                                    bgColor: selectedIndex == 1
                                        ? const Color(0xFF9E6BFC)
                                        : Colors.white,
                                  ),
                                ),
                                IconButton(
                                  onPressed: () =>
                                      setState(() => selectedIndex = 2),
                                  icon: _circleIcon(
                                    Icons.person,
                                    bgColor: selectedIndex == 2
                                        ? const Color(0xFF9E6BFC)
                                        : Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInfoTile({
    required Widget iconWidget,
    required String label,
    required String value,
    bool showEdit = false,
    IconData? trailingIcon,
    Color iconColor = const Color(0xFF9E6BFC),
    Color valueColor = Colors.grey,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 5),
      padding: const EdgeInsets.symmetric(horizontal: 1, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(45),
        border: Border.all(color: const Color(0xFFE0D6FA)),
      ),
      child: Row(
        children: [
          iconWidget,
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(label,
                    style: const TextStyle(fontWeight: FontWeight.w600)),
                const SizedBox(height: 2),
                Text(value, style: TextStyle(color: valueColor)),
              ],
            ),
          ),
          if (showEdit)
            Container(
              padding: const EdgeInsets.all(6),
              decoration: const BoxDecoration(
                color: Color(0xFFF3F0FE),
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.edit, color: Color(0xFF9E6BFC), size: 18),
            ),
          if (trailingIcon != null)
            Container(
              padding: const EdgeInsets.all(6),
              decoration: const BoxDecoration(
                color: Color(0xFFF3F0FE),
                shape: BoxShape.circle,
              ),
              child:
                  Icon(trailingIcon, color: const Color(0xFF9E6BFC), size: 18),
            ),
        ],
      ),
    );
  }

  Widget _circleIcon(
    IconData icon, {
    Color? bgColor = Colors.white,
    Gradient? gradient, // add gradient support
    VoidCallback? onTap,
  }) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: Material(
        color: Colors.transparent,
        shape: const CircleBorder(),
        child: InkWell(
          onTap: onTap,
          customBorder: const CircleBorder(),
          hoverColor: const Color.fromARGB(255, 156, 177, 238).withOpacity(0.2),
          splashColor: const Color.fromARGB(255, 94, 92, 97).withOpacity(0.3),
          child: Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: gradient == null
                  ? bgColor
                  : null, // only apply color if no gradient
              gradient: gradient,
            ),
            child: Icon(
              icon,
              size: 23,
              color: (gradient != null || bgColor != Colors.white)
                  ? Colors.white
                  : const Color(0xFF9E6BFC),
            ),
          ),
        ),
      ),
    );
  }
}
