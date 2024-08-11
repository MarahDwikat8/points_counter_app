import 'package:flutter/material.dart';

void main() {
  runApp(PointsCounterApp());
}

class PointsCounterApp extends StatefulWidget {
  @override
  _PointsCounterAppState createState() => _PointsCounterAppState();
}

class _PointsCounterAppState extends State<PointsCounterApp> {
  int teamAScore = 0;
  int teamBScore = 0;
  String winnerText = '';

  void _incrementTeamAScore(int points) {
    setState(() {
      teamAScore += points;
      _checkWinner();
    });
  }

  void _incrementTeamBScore(int points) {
    setState(() {
      teamBScore += points;
      _checkWinner();
    });
  }

  void _resetScores() {
    setState(() {
      teamAScore = 0;
      teamBScore = 0;
      winnerText = '';
    });
  }

  void _checkWinner() {
    if (teamAScore > teamBScore) {
      winnerText = 'Team A wins!';
    } else if (teamBScore > teamAScore) {
      winnerText = 'Team B wins!';
    } else {
      winnerText = 'It\'s a tie!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: const Text('Points Counter'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    const Text(
                      'Team A',
                      style: TextStyle(fontSize: 32),
                    ),
                    Text(
                      '$teamAScore',
                      style: const TextStyle(fontSize: 150),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: const Size(150, 50),
                      ),
                      onPressed: () => _incrementTeamAScore(1),
                      child: const Text(
                        'Add 1 Point',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: const Size(150, 50),
                      ),
                      onPressed: () => _incrementTeamAScore(2),
                      child: const Text(
                        'Add 2 Points',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: const Size(150, 50),
                      ),
                      onPressed: () => _incrementTeamAScore(3),
                      child: const Text(
                        'Add 3 Points',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 400,
                  child: VerticalDivider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                ),
                Column(
                  children: [
                    const Text(
                      'Team B',
                      style: TextStyle(fontSize: 32),
                    ),
                    Text(
                      '$teamBScore',
                      style: const TextStyle(fontSize: 150),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: const Size(150, 50),
                      ),
                      onPressed: () => _incrementTeamBScore(1),
                      child: const Text(
                        'Add 1 Point',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: const Size(150, 50),
                      ),
                      onPressed: () => _incrementTeamBScore(2),
                      child: const Text(
                        'Add 2 Points',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: const Size(150, 50),
                      ),
                      onPressed: () => _incrementTeamBScore(3),
                      child: const Text(
                        'Add 3 Points',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 32),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                minimumSize: const Size(150, 50),
              ),
              onPressed: _resetScores,
              child: const Text(
                'Reset',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(height: 32),
            if (winnerText.isNotEmpty)
              Text(
                winnerText,
                style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              )
          ],
        ),
      ),
    );
  }
}