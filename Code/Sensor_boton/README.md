Descripcion del codigo Sensor Ultrasonico
========
> Codigo revisado por David y Marco.
> Funciona de manera digital, no se ha probado en el prototipo fisico.
> 
> Este programa utiliza un sensor de boton (pulsador). En el bucle principal, se lee el estado del botón y se muestra "Button is pressed" si está presionado o "Button is not pressed" si no lo está. Se utiliza el Monitor Serial para mostrar los mensajes. El estado cambia mientras se mantiene presionado y vuelve a su estado original cuando se suelta.

## Notas para cuando se agregue a prototipo
- Boton debe estar conectado al pin 4 (esa es la conexion que se le dio en el codigo, en caso de usar otro cambiar en codigo). 
- Usar resistencia para evitar problemas en el estado del boton.
- El boton actualmente dice si esta siendo presionado o no, en caso de manejar True or False para el monitor habria que hacer el cambio.