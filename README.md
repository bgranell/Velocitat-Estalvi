CAT

Sorgeix d'una pluja d'idees del Màster d'Avaluació de Programes i Polítiques Públiques de la UCM davant de la pregunta:
- Quins indicadors faríeu servir per establir la classe social d'una persona? + La capacitat d'acumular capital, vaig pensar jo.
D'aquesta manera, al meu parer, la dada que millor resumeix aquest aspecte és el nombre de mesos que es necessita per estalviar un mes de despeses normal.
L'expressió matemàtica d'aquesta dada és la següent:

$$((Ingressos - Despeses)/Despeses)^-1$$

La senzillesa d'aquesta dada ens permet calcula-la a partir de les taxes d'estalvi d'una regió i a nivell individual, de manera que ens permet fer una fàcil comparació entre regions i
individus controlant el nivell de preus.

D'aquesta manera importem les dades d'Excel de les taxes d'estalvi per paísos a R i fem una transformació de la taula per agregar una nova variable: la taxa de consum ( 1 - taxa d'estalvi ), i construim una altra variable a partir d'aquesta mitjançant la fórmula que he comentat anteriorment. ¡¡¡ en comptes de $$(Ingressos - Despeses)/Despeses$$ fem $$(1 - taxa de consum)/taxa de consum$$

ESP

Surge de una lluvia de ideas del Máster de Evaluación de Programas y Políticas Públicas de la UCM ante la pregunta:

¿Qué indicadores utilizaría para establecer la clase social de una persona? + La capacidad de acumular capital, pensé yo. De esta forma, en mi opinión, el dato que mejor resume este aspecto es el número de meses que se necesita para ahorrar un mes de gastos normal. La expresión matemática de este dato es la siguiente:

$$((Ingresos - Gastos)/Gastos)^-1$$

La sencillez de este dato nos permite calcularlo a partir de las tasas de ahorro de una región y a nivel individual, por lo que nos permite hacer una fácil comparación entre regiones e individuos controlando el nivel de precios.

De esta forma importamos los datos de Excel de las tasas de ahorro por países en R y hacemos una transformación de la tabla para agregar una nueva variable: la tasa de consumo ( 1 - tasa de ahorro ), y construimos otra variable a partir de ésta mediante la fórmula que he comentado anteriormente. ¡¡¡ en vez de
