import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sayoraaa/screens/home_screen.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(34, 3, 136, 1),
              Color.fromRGBO(98, 77, 168, 0.695),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          children: [
            // Header
            Container(
              padding: const EdgeInsets.only(
                top: 50,
                left: 16,
                right: 16,
                bottom: 10,
              ),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const HomeScreen()),
                      );
                    },
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      padding: const EdgeInsets.all(6),
                      child: const Icon(
                        Icons.arrow_back,
                        color: Color.fromRGBO(108, 65, 250, 1),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Sayora',
                        style: GoogleFonts.lato(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 2),
                      Row(
                        children: [
                          Container(
                            width: 12,
                            height: 12,
                            decoration: const BoxDecoration(
                              color: Colors.green,
                              shape: BoxShape.circle,
                            ),
                          ),
                          const SizedBox(width: 6),
                          Text(
                            'Always active',
                            style: GoogleFonts.lato(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Spacer(),
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    padding: const EdgeInsets.all(6),
                    child: const Icon(
                      Icons.notifications_none,
                      color: Color.fromRGBO(108, 65, 250, 1),
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Icon(Icons.more_vert, color: Colors.white),
                ],
              ),
            ),

            // Chat area
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: Column(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: ListView(
                          children: [
                            _messageBubble(
                              isMe: false,
                              message:
                                  "Sed Do Eiusmod Tempor Incididunt Ut Labore Et Magna Aliqua...",
                              time: "10 AM",
                              avatar: '👩‍🦰',
                            ),
                            _messageBubble(
                              isMe: true,
                              message:
                                  "Lorem Ipsum Dolor Sit Amet, Consectetur Adipisicing...",
                              time: "10 AM",
                              avatar: '🧑🏾‍🦱',
                            ),
                            _messageBubble(
                              isMe: true,
                              message: "Lorem Ipsum Dolor Sit",
                              time: "10 AM",
                              avatar: '🧑🏾‍🦱',
                            ),
                            _messageBubble(
                              isMe: false,
                              message: "Sed Do Eiusmod Tempor Incididunt...",
                              time: "10 AM",
                              avatar: '👩‍🦰',
                            ),
                            _messageBubble(
                              isMe: true,
                              message: "Lorem Ipsum Dolor Sit Amet...",
                              time: "10 AM",
                              avatar: '🧑🏾‍🦱',
                            ),
                            _messageBubble(
                              isMe: false,
                              message: "Sed Do Eiusmod Tempor Incididunt...",
                              time: "10 AM",
                              avatar: '👩‍🦰',
                            ),
                            _messageBubble(
                              isMe: true,
                              message: "Ok",
                              time: "10 AM",
                              avatar: '🧑🏾‍🦱',
                            ),
                          ],
                        ),
                      ),
                    ),

                    // Message Input
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12.withOpacity(0.08),
                              blurRadius: 15,
                              offset: const Offset(0, 8),
                            ),
                          ],
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Type message here...",
                            hintStyle: GoogleFonts.lato(
                              color: Colors.grey[600],
                              fontSize: 14,
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            contentPadding: const EdgeInsets.symmetric(vertical: 14),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide.none,
                            ),
                            prefixIcon: const Icon(
                              Icons.emoji_emotions_outlined,
                              color: Color.fromRGBO(175, 164, 212, 1),
                            ),
                            suffixIcon: Container(
                              margin: const EdgeInsets.only(right: 8),
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                gradient: LinearGradient(
                                  colors: [
                                    Color(0xFF6B46C1),
                                    Color(0xFF9F7AEA),
                                  ],
                                ),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(10),
                                child: Icon(
                                  Icons.send,
                                  color: Colors.white,
                                  size: 20,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _messageBubble({
    required bool isMe,
    required String message,
    required String time,
    required String avatar,
  }) {
    final bubbleColor = isMe
        ? const Color.fromRGBO(162, 154, 234, 0.875)
        : const Color.fromRGBO(130, 112, 188, 1);
    final textColor = Colors.white;

    final avatarUrl = avatar == '👩‍🦰'
        ? 'https://tse4.mm.bing.net/th/id/OIP.lvuuyIeh1t0XEQcuipw9iwHaHa?pid=Api&P=0&h=180'
        : 'https://img.freepik.com/free-psd/3d-rendering-hair-style-avatar-design_23-2151869121.jpg?semt=ais_hybrid';

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        mainAxisAlignment:
            isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (!isMe)
            Column(
              children: [
                Container(
                  width: 36,
                  height: 36,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(150, 130, 203, 1),
                    shape: BoxShape.circle,
                  ),
                  child: ClipOval(
                    child: Image.network(
                      avatarUrl,
                      width: 36,
                      height: 36,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 2),
              ],
            ),
          if (!isMe) const SizedBox(width: 8),
          Flexible(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
              decoration: BoxDecoration(
                color: bubbleColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: const Radius.circular(20),
                  bottomRight: const Radius.circular(20),
                  topLeft: Radius.circular(isMe ? 20 : 0),
                  topRight: Radius.circular(isMe ? 0 : 20),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    message,
                    style: GoogleFonts.lato(color: textColor, fontSize: 14),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    time,
                    style: GoogleFonts.lato(
                      color: textColor.withOpacity(0.6),
                      fontSize: 8,
                    ),
                  ),
                ],
              ),
            ),
          ),
          if (isMe) const SizedBox(width: 8),
          if (isMe)
            Container(
              width: 36,
              height: 36,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(150, 130, 203, 1),
                shape: BoxShape.circle,
              ),
              child: ClipOval(
                child: Image.network(
                  avatarUrl,
                  width: 36,
                  height: 36,
                  fit: BoxFit.cover,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
