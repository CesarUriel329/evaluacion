class actividadeslista extends StatelessWidget {

  static String routeName = "/actividadeslista";

  const actividadeslista({Key key}): super(key: key);

  List<actividades> contruirLista() {

    var actividad1 = actividades(nombreAct: 'lipiar cuarto',fecha: '06/06/2020',descripcion: 'tender la cama, barrer, recoger basura');
    var actividad2 = actividades(nombreAct: 'limpiar vidrios',fecha: '06/06/2020',descripcion: 'sacudir polvo');
    var actividad3 = actividades(nombreAct: 'recger trastes de la mesa',fecha: '06/06/2020',descripcion: 'ponerlos en el lavatrastes');
    var actividad4 = actividades(nombreAct: 'lavar ropa',fecha: '06/06/2020',descripcion: 'lavar ropas sucia');
    var actividad5 = actividades(nombreAct: 'lavar el sanitario',fecha: '06/06/2020',descripcion: 'lavar la tasa del sanitario');
    var actividad6 = actividades(nombreAct: 'barrer el patio',fecha: '06/06/2020',descripcion: 'barrer las ojas que caen de los arboles');
    var actividad7 = actividades(nombreAct: 'tirar basura',fecha: '06/06/2020',descripcion: 'depositar la basura en el camion que pasa recolectando');

    Map<int,actividades> mapaactividades={
      0: actividad1,
      1: actividad2,
      2: actividad3,
      3: actividad4,
      4: actividad5,
      5: actividad6,
      6: actividad7,
    };
    //print(mapaVuelos[1].detalles);
    return List.generate(mapaactividades.length, (i) {
      //print('$i');
      return actividades(

          nombreAct: mapaactividades[i].nombreAct,
          fecha: mapaactividades[i].fecha,
          descripcion: mapaactividades[i].descripcion
      );
    });
  }


  List<ListItem> actividades(){

    return contruirLista()
        .map((acticidades)=> ListItem(registro: actividades))
        .toList();

  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return ListView(
      children: actividades(),
    );


  }
}