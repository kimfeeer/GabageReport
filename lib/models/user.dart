class User {
    User({
        
        this.nombre,
        this.apellido,
        this.correo,
        this.contrasena,
    });

   
    String? nombre;
    String? apellido;
    String? correo;
    String? contrasena;

    factory User.fromJson(Map<String, dynamic> json) => User(
        
        nombre: json["nombre"],
        apellido: json["apellido"],
        correo: json["correo"],
        contrasena: json["contraseña"],
    );

    Map<String, dynamic> toJson() => {
        
        "nombre": nombre,
        "apellido": apellido,
        "correo": correo,
        "contraseña": contrasena,
    };
}
