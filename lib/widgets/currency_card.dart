import 'package:flutter/material.dart';

class CurrencyCard extends StatelessWidget {
  final String name, code, amount;
  final IconData icon;

  const CurrencyCard({
    super.key,
    required this.name,
    required this.code,
    required this.amount,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      clipBehavior: Clip.hardEdge, // 아이콘의 나머지 부분이 숨겨짐
      decoration: BoxDecoration(
        color: Color(0xFF1F2123),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      amount,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      code,
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.8),
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Transform.scale(
              // 아이콘의 크기만 변경
              scale: 2.2,
              child: Transform.translate(
                offset: Offset(-5, 12), // x좌표, y좌표 설정법
                child: Icon(
                  icon,
                  color: Colors.white.withOpacity(0.8),
                  size: 80,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
