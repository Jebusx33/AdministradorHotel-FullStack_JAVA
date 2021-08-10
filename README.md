Trabajo Práctico Integrador

Escenario:

Un prestigioso hotel desea llevar a cabo un sistema para la informatización de las reservas de sus diferentes habitaciones que tiene disponibles.

Cada habitación cuenta con un número identificatorio, el piso donde se encuentra, un nombre según su temática, el tipo (single, doble, triple o múltiple) y el precio por noche.

Para poder realizar una reserva de una habitación es necesario contar con la fecha de check-in (ingreso al hotel) y fecha de check-out (egreso del hotel). Antes de confirmar una reserva, el sistema deberá verificar que la habitación solicitada no esté reservada en el período de tiempo que se haya elegido. Por ejemplo, si la habitación está reservada del 14/07 al 21/07 y la nueva reserva es del 12/07 al 15/07 no deberá permitir realizar la misma, dado que la fecha de check-out interfiere con fechas en la que se encuentra ocupada la habitación.

A partir de la cantidad de días que se hospede la persona y del tipo de habitación que haya elegido, el sistema deberá devolver el monto total de la estadía; al mismo tiempo, se deberá verificar que la cantidad de personas que se hospedarán no supere la cantidad establecida por el tipo de habitación; estas cantidades se detallan a continuación:

                 --------------------------------------------------------
                 | Tipo de Habitación | Cantidad de personas permitidas |
                 --------------------------------------------------------
                 |     Single 1       |      sola persona               |
                 --------------------------------------------------------
                 |     Doble 2        |      personas como máximo       |
                 --------------------------------------------------------
                 |     Triple 3       |      personas como máximo       |
                 --------------------------------------------------------
                 |     Múltiple       |      1,2,3, 4 personas o más    |  
                 --------------------------------------------------------

Además de verificar las fechas de reservación, la cantidad de personas a hospedarse, etc, es necesario registrar los datos del huésped que se hará cargo de la reserva. Entre estos datos es necesario solicitar: dni, nombre, apellido, fecha de nacimiento, dirección y profesión. Por cuestiones de privacidad del hotel, no se registrarán los datos de los acompañantes.

El sistema está pensado para ser utilizado únicamente por los EMPLEADOS del hotel, por lo que la interfaz gráfica y la utilización debe ser pensada de esta manera (no como un sistema de reservas online).

Para la administración de los empleados, cada uno de ellos contará con un usuario y contraseña que le permitirá ingresar al sistema; para ello, cada uno de ellos deberá de estar registrado en el sistema con sus correspondientes datos personales (dni, nombre, apellido, fecha de nacimiento, dirección y cargo). Cabe destacar que los empleados reciben bonificaciones monetarias por cantidad de reservas realizadas por día, por lo que cada reserva debe tener asignada el usuario que la dio de alta.

Por otra parte, el sistema deberá poder permitir visualizar las siguientes consultas/informes:

a. Todas las reservas realizadas en un determinado día.

b. Todos los huéspedes registrados en el sistema.

c. Lista de las reservas realizadas por un determinado empleado.

d. Listas de todas las reservas realizadas por un determinado huésped en un período desde/hasta.

Bonus

El sistema que se planteó con anterioridad no tiene pensado el manejo ni de dinero ni de ganancias; sin embargo, el dueño del hotel propuso una recompensa para aquel desarrollador que realice una propuesta que le permita, a través del sistema, conocer las ganancias diarias y mensuales en base a las reservas realizadas de las habitaciones.

Consideraciones

Se deberá presentar:

✓ Diagrama de clases del modelo de datos de la aplicación a desarrollar (en formato digital).

✓ Archivos de código fuente de la aplicación web.

✓ Especificación de la configuración de la base de datos (usuarios, contraseñas, etc para poder replicar).

✓ Documento de supuestos: Un documento con todas las suposiciones que tuvo el analista/programador. Por ejemplo, se supone que el límite máximo de personas por habitación múltiple es de 8.

✓ Una presentación oral breve por parte del alumno mediante un video grabando la pantalla (video de hasta 10 minutos como máximo donde pueda mostrar el sistema, comentar los supuestos que tuvo, etc).

o Es deseable que se visualice la cara del alumno y se escuche su voz en la explicación. Se recomienda la aplicación OBS Studio para grabación de pantalla. En caso de no contar con las herramientas necesarias, puede grabarse la pantalla con el celular y comentar de fondo.

                                              Desarrollo Web Full Stack con Java – Ing. Luisina de Paula
