class producto {
  int cantidad;
  double preciounitario;
  double preciototal;
  String nombreproducto;

  producto(this.cantidad, this.preciounitario, this.preciototal,
      this.nombreproducto);


       Map<String, dynamic> toJson() => {
        'Cantidad': this.cantidad,
        'Precio Unitario': this.preciounitario,
        'Precio Total': this.preciototal,
        'Nombre Producto': this.nombreproducto,

      };
}
