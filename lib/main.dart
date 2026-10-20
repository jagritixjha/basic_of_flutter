import 'package:app_bar/views/date_time.dart';
import 'package:flutter/material.dart';

// void main() {
//   runApp(
//     const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: DateTimePicker(),
//     ),
//   );
// }

void main() {
  runApp(TicTacToeApp());
}

class TicTacToeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tic Tac Toe',
      debugShowCheckedModeBanner: false,
      home: TicTacToeGame(),
    );
  }
}

class TicTacToeGame extends StatefulWidget {
  @override
  _TicTacToeGameState createState() => _TicTacToeGameState();
}

class _TicTacToeGameState extends State<TicTacToeGame> {
  List<String> board = List.filled(9, '');
  String currentPlayer = 'X';
  String result = '';
  bool gameOver = false;

  void resetGame() {
    setState(() {
      board = List.filled(9, '');
      currentPlayer = 'X';
      result = '';
      gameOver = false;
    });
  }

  void makeMove(int index) {
    if (board[index] == '' && !gameOver) {
      setState(() {
        board[index] = currentPlayer;
        checkWinner();
        currentPlayer = (currentPlayer == 'X') ? 'O' : 'X';
      });
    }
  }

  void checkWinner() {
    List<List<int>> winningCombinations = [
      [0, 1, 2],
      [3, 4, 5],
      [6, 7, 8],
      [0, 3, 6],
      [1, 4, 7],
      [2, 5, 8],
      [0, 4, 8],
      [2, 4, 6],
    ];

    for (var combo in winningCombinations) {
      String a = board[combo[0]];
      String b = board[combo[1]];
      String c = board[combo[2]];
      if (a != '' && a == b && b == c) {
        result = '$a wins!';
        gameOver = true;
        return;
      }
    }

    if (!board.contains('')) {
      result = 'It\'s a draw!';
      gameOver = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tic Tac Toe'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GridView.builder(
            shrinkWrap: true,
            itemCount: 9,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
            ),
            itemBuilder: (context, index) => GestureDetector(
              onTap: () => makeMove(index),
              child: Container(
                margin: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  color: Colors.grey[200],
                ),
                child: Center(
                  child: Text(
                    board[index],
                    style: TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                      color: board[index] == 'X' ? Colors.blue : Colors.red,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Text(
            result,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          if (gameOver)
            ElevatedButton(
              onPressed: resetGame,
              child: Text('Restart'),
            ),
        ],
      ),
    );
  }
}
