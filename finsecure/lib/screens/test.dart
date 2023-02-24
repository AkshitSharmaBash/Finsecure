



int _remainingBudget = 0;

  final TextEditingController _budgetController = TextEditingController();
  final TextEditingController _expenseController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Budget Planner"),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widet>[
            (
              controller: _budgetController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "Enter Total Budget",
                labelText: "Total Budget",
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            TextField(
              controller: _expenseController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "Enter Expense",
                labelText: "Expense",
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            RaisedButton(
              onPressed: () {
                setState(() {
                  _totalBudget = int.parse(_budgetController.text);
                  _expense = int.parse(_expenseController.text);
                  _remainingBudget = _totalBudget - _expense;
                });
              },
              child: Text("Calculate"),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "Remaining Budget: $_remainingBudget",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}