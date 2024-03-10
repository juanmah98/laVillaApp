import 'dart:convert';

class LaVillaResponse {
  int idVilla;
  int anno;
  int cantPersonas;
  String apodoNombre;
  String direccion;
  String url;
  String urlDrive;
  int asistentes;
  dynamic organizador;
  dynamic tesorero;
  String descripcion;
  String tematica;
  bool especialComidaCena;
  String fotoFondo;
  DateTime checkIn;
  DateTime checkOut;
  String fotoDriveUrl;

  LaVillaResponse({
    required this.idVilla,
    required this.anno,
    required this.cantPersonas,
    required this.apodoNombre,
    required this.direccion,
    required this.url,
    required this.urlDrive,
    required this.asistentes,
    required this.organizador,
    required this.tesorero,
    required this.descripcion,
    required this.tematica,
    required this.especialComidaCena,
    required this.fotoFondo,
    required this.checkIn,
    required this.checkOut,
    required this.fotoDriveUrl,
  });

  factory LaVillaResponse.fromRawJson(String str) => LaVillaResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory LaVillaResponse.fromJson(Map<String, dynamic> json) => LaVillaResponse(
        idVilla: json["id_villa"],
        anno: json["anno"],
        cantPersonas: json["cant_personas"],
        apodoNombre: json["apodo_nombre"],
        direccion: json["direccion"],
        url: json["url"],
        urlDrive: json["url_drive"],
        asistentes: json["asistentes"],
        organizador: json["organizador"],
        tesorero: json["tesorero"],
        descripcion: json["descripcion"],
        tematica: json["tematica"],
        especialComidaCena: json["especial_comida_cena"],
        fotoFondo: json["foto_fondo"],
        checkIn: DateTime.parse(json["check_in"]),
        checkOut: DateTime.parse(json["check_out"]),
        fotoDriveUrl: json["foto_drive_url"],
      );

  Map<String, dynamic> toJson() => {
        "id_villa": idVilla,
        "anno": anno,
        "cant_personas": cantPersonas,
        "apodo_nombre": apodoNombre,
        "direccion": direccion,
        "url": url,
        "url_drive": urlDrive,
        "asistentes": asistentes,
        "organizador": organizador,
        "tesorero": tesorero,
        "descripcion": descripcion,
        "tematica": tematica,
        "especial_comida_cena": especialComidaCena,
        "foto_fondo": fotoFondo,
        "check_in": "${checkIn.year.toString().padLeft(4, '0')}-${checkIn.month.toString().padLeft(2, '0')}-${checkIn.day.toString().padLeft(2, '0')}",
        "check_out": "${checkOut.year.toString().padLeft(4, '0')}-${checkOut.month.toString().padLeft(2, '0')}-${checkOut.day.toString().padLeft(2, '0')}",
        "foto_drive_url": fotoDriveUrl,
      };
}
