part of "pages.dart";

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  final ctrlName = TextEditingController();
  String _name = "Hello";

  @override void dispose(){
    ctrlName.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tanpa Bloc"),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(_name, style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24),),
            SizedBox(height: 24),
            TextFormField(
              controller: ctrlName,
              decoration: InputDecoration(
                hintText: "Your Full Name",
                labelText: "Full Name",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 24,),
            RaisedButton.icon(
              textColor: Colors.white,
              color: Colors.blue[600],
              icon: Icon(Icons.add_box), 
              label: Text("Submit"),
              onPressed: (){
                setState(() {
                  _name = ctrlName.text;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}