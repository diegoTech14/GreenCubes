Descripcion del codigo Sensor Ultrasonico
========
> Codigo revisado por Marco.
> No se ha probado funcionalidad.
> 
> Este programa utiliza dos sensores ultrasónicos para medir la distancia entre cada sensor y un objeto. Se definen cuatro pines, dos para enviar pulsos de ultrasonido (TRIGGER_PIN_1 y TRIGGER_PIN_2) y dos para recibir los ecos reflejados (ECHO_PIN_1 y ECHO_PIN_2). La biblioteca NewPing simplifica las mediciones, obteniendo las distancias en centímetros. Si la distancia está fuera del rango útil (más allá de 400 cm o menos de 2 cm), se muestra "Out of range" en el monitor serial; de lo contrario, se muestran las distancias medidas por cada sensor.

## Notas para cuando se agregue a prototipo
- Revisar pines en el prototipo
- Usa la biblioteca NewPing de referencia: https://www.arduino.cc/reference/en/libraries/newping/
- Es importante instar la biblioteca NewPing si no se ha hecho anteriormente. Esto se puede hacer en Sketch/Include Library/Manage Libraries/New Ping y se procede a instalarlo.
