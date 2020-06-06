class actividades{
  final String nombreAct>;
  final String fecha;
  final String descripcion;

  actividades({this.nombreAct,this.fecha, this.descripcion});


  /* Se crea el metodo toMap para transformar los datos de un formato de objeto
  a mapa. Este es necesario para introducir registros a la base de datos.
   */
  Map<String, dynamic> toMap() {
    return {
      'nombreAct': nombreAct,
      'fecha': fecha,
      'descripcion': descripcion,
    };
  }

  factory actividades.fromJson(Map<String, dynamic> json) {
    return actividades(
      nombreAct: json['nombreAct'],
      fecha: json['fecha'],
      descripcion: json['descripcion'],

    );
  }


}
