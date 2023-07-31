Descripcion del codigo Sensor Ultrasonico
========
> Codigo revisado por David y Marco
> Funciona con prototipo
> 
> Este programa utiliza un sensor de ultrasonido para medir la distancia
> entre el sensor y un objeto. El pin trigPin se utiliza para enviar un
> pulso de ultrasonido, mientras que el pin echoPin recibe el eco del
> pulso reflejado por el objeto. La duración del eco recibido se utiliza
> para calcular la distancia y luego se muestra en centímetros a través
> del monitor serial. Si la distancia está fuera del rango útil (más allá
> de 400 cm o menos de 2 cm), se mostrará "Out of range".