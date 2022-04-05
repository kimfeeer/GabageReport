import 'dart:convert';



Reportes reportesFromJson(String str) => Reportes.fromJson(json.decode(str));



String reportesToJson(Reportes data) => json.encode(data.toJson());



class Reportes {
Reportes({
this.id,
this.descripcion,
this.motivo,
this.fecha,
this.colonia,
});



int? id;
String? descripcion;
String? motivo;
String? fecha;
String? colonia;



factory Reportes.fromJson(Map<String, dynamic> json) => Reportes(
id: json["id"],
descripcion: json["Descripcion"],
motivo: json["Motivo"],
fecha: json["Fecha"],
colonia: json["Colonia"],
);



Map<String, dynamic> toJson() => {
"id": id,
"Descripcion": descripcion,
"Motivo": motivo,
"Fecha": fecha,
"Colonia": colonia,
};
}