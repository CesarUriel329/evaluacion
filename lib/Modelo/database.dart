class actividadescasaBD extends StatelessWidget {
  static String routeName = "/actividadecasaBD";
  final ManipulacionBD bd = ManipulacionBD(); // Instancia de la clase de manipulación de datos


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context)  {

    return Scaffold(
      appBar: AppBar(
        title: Text("Actividades Sqlite"),
      ),
      body: Container(
        child: Center(
          child: FutureBuilder<List<actividades>>(
              future: bd.getactividades(),
              builder: (BuildContext context, AsyncSnapshot<List<actividades>> snapshot) {
                List<Widget> children;
                if (snapshot.hasData) {
                  children = snapshot.data
                      .map((sctividades) => ListItem(registro: actividades))
                      .toList();
                } else if (snapshot.hasError) {
                  children = <Widget>[
                    Icon(
                      Icons.error_outline,
                      color: Colors.red,
                      size: 60,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 16),
                      child: Text('Error: ${snapshot.error}'),
                    )
                  ];
                } else {
                  children = <Widget>[
                    SizedBox(
                      child: CircularProgressIndicator(),
                      width: 60,
                      height: 60,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 16),
                      child: Text('Awaiting result...'),
                    )
                  ];
                }
                return ListView(
                  children: children,
                );
              }
          ),

        ),
      ),

    );
  }
}