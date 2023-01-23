
---
title: "Mapa de variables"
output:
  pdf_document: default
  html_document: default
  word_document: default
---

A continuación aparecen listadas las variables del archivo *imp.csv* clarificando las etiquetas del nombre de cada variable así como las etiquetas para los posibles valores de cada variable.

- id:			código de identificación de participante

- edad:			Por favor, indique su edad en años:

- sex:			Por favor, indique si es:
	- 0		Mujer
	- 1		Hombre
	- 99		Prefiero no decirlo

- pais: Por favor, indique el país en el que trabaja *(fueron presentados todos los países del mundo, pero aquí solo se presental aquellos que recibieron respuestas)*:
	- A4		Alemania
	- A8		Arabia Saudita
	- A10		Argentina
	- A20		Bélgica
	- A24		Bolivia
	- A27		Brasil
	- A34		Canadá
	- A36		Chile
	- A39		Colombia
	- A42		Costa Rica
	- A45		Cuba
	- A50		Ecuador
	- A52		El Salvador
	- A53		Emiratos Árabes Unidos
	- A57		España
	- A58		Estados Unidos de América
	- A59		Estonia
	- A67		Francia
	- A73		Guatemala
	- A79		Honduras
	- A81		India
	- A90		Italia
	- A92		Japón
	- A106		Luxemburgo
	- A117		México
	- A133		Países Bajos
	- A136		Panamá
	- A138		Paraguay
	- A139		Perú
	- A140		Polonia
	- A194		Puerto Rico
	- A146		República Checa
	- A151		República Dominicana
	- A172		Suecia
	- A173		Suiza
	- A189		Venezuela (República Bolivariana de)

- tipouni: Indique si su centro de trabajo es una institución pública o privada.
	- A1		Pública
	- A2		Privada

- perfil:			Por favor, indique qué perfil se adecúa más a su situación:
	- A1		Personal docente	
	- A2		Personal de investigación	
	- A3		Personal docente e investigador	
	- A4		Estudiante de doctorado	

- exed:			Indique en años su experiencia docente universitaria (en caso de que no tenga experiencia docente responda a esta pregunta con un cero):

- area:			Por favor, indique el área de conocimiento en el que se encuadra su investigación:
	- A2		Arte y humanidades
	- A3		Bioquímica, genética y biología molecular
	- A4		Ciencias agrícolas y biológicas
	- A5		Ciencias ambientales
	- A6		Ciencias de la computación
	- A7		Ciencias de la decisión
	- A8		Ciencias de la tierra
	- A9		Ciencias de materiales
	- A10		Ciencias sociales
	- A11		Economía, econometría y finanzas
	- A12		Energía
	- A13		Enfermería
	- A14		Farmacología y toxicología
	- A15		Física y astronomía
	- A16		Ingeniería
	- A17		Ingeniería química
	- A18		Inmunología y microbiología
	- A19		Matemáticas
	- A20		Medicina
	- A21		Negocios, gestión y contabilidad
	- A22		Neurociencia
	- A23		Odontología
	- A24		Profesiones de la salud
	- A25		Psicología
	- A26		Química
	- A27		Veterinaria

- acreedu:			¿Ha sido acreditada su actividad docente por alguna agencia oficial de acreditación?
	- 1		Sí
	- 2		No

- exin:			Indique el número de años de experiencia investigadora (en caso de no tener experiencia investigadora responda a esta pregunta con un cero):

- acreinv:			¿Ha sido acreditada su actividad investigadora por alguna agencia oficial de acreditación?
	- 1		Sí
	- 2		No

- grupoinv:		¿Pertenece a algún grupo de investigación?
	- 1		Sí
	- 2		No

- nart:			Indique el número total de artículos que ha publicado:

- autprin:			Indique el número de artículos en los que figura como primer firmante de autoría:

- njcr:			Indique el número de artículos que ha publicado en revistas indexadas en la base de datos JCR (Journal Citation Reports)

- envnohh:			Si tras la realización de una investigación encuentra que los resultados no se corresponden con sus hipótesis iniciales, ¿enviaría su trabajo para que fuese publicado? *(Las variables generadas por esta pregunta se denominan como nh1, ..., nh5. Los posibles valores de cada una de esas variables son 1 = Sí, 2 = No)*
	- SQ001		Sí
	- SQ002		No
	- SQ005		No lo tengo claro
	- SQ003		Modificaría los resultados
	- SQ004		Modificaría las hipótesis

- pubnohh:			Si tras la realización de una investigación encuentra que los resultados no se corresponden con sus hipótesis iniciales, ¿cree que es necesario que dichos resultados sean publicados?
	- A1		Sí
	- A2		No
	- A3		No lo tengo claro

- mot:			Indique cuál o cuáles de las siguientes opciones le impulsan a investigar y a publicar sus resultados: *(Las variables generadas por esta pregunta se denominan como m1, ..., m10. Los posibles valores de cada una de esas variables son 1 = Sí, 2 = No)*
	- SQ001		Para incrementar mi estatus social	
	- SQ002		Para incrementar mi nivel de ingresos	
	- SQ003		Para promocionar o ascender en el trabajo	
	- SQ004		Para buscar la verdad en mi campo de conocimiento	
	- SQ005		Para conseguir acreditación por parte de una agencia oficial	
	- SQ006		Para compartir los resultados con la comunidad académica	
	- SQ007		Para aportar soluciones a problemas prácticos	
	- SQ008		Para encontrar sinérgias con otros profesionales	
	- SQ009		Para realizarme como persona	
	- SQ010		Para tener una mejor base de conocimiento que ofrecer a la sociedad

- priorpub:		Cuando se encuentra ante la realización de una investigación, ¿cuál es su prioridad?
	- A1		Difundir-socializar los resultados de la investigación (por ejemplo, publicar en una revista de alto impacto, presentar los resultados en un congreso, comunicarlo en redes sociales o blogs)
	- A2		Resolver un problema social-humano
	- A3		Descubrir algo o aprender sobre un aspecto de la realidad
	- A4		Cumplir los requisitos de mi institución
	- A5		Mejorar mi reputación académica o profesional

- util:			Cuando realiza una investigación, ¿qué considera más útil?

	-A1		La aplicabilidad de los resultados.
	
	-A2		La generación de conocimiento, independientemente de su aplicabilidad.

- pract:  - A continuación, se presentan una serie de prácticas que pueden ser llevadas a cabo para incrementar las probabilidades de publicación de un artículo. Señale aquellas en que, de un modo u otro, directa o indirectamente, haya participado. *(Las variables generadas por esta pregunta se denominan como p1, ..., p28. Los posibles valores de cada una de esas variables son 1 = Sí, 2 = No).*

	- SQ001		Pagar a otras personas para la redacción del artículo o parte de este, aunque no hayan participado en la investigación.
	
	- SQ002		Añadir a personas con mayor autoridad académica que la mía (por ejemplo, quien dirige mi tesis), aunque no hayan colaborado en el desarrollo del manuscrito o de la investigación.
	- SQ003		Incluir familiares/amistades dentro de los artículos científicos solo por sus lazos afectivos.
	- SQ004		Citar trabajos como recomendación de la revista o revisores externos del manuscrito pese a que no tengan relación substancial con la investigación.
	- SQ005		Citar trabajos aunque no hayan sido leídos ni estudiados por las personas que firman el artículo.
	- SQ006		Establecer el orden de autoría de acuerdo a parámetros establecidos en el departamento/grupo y no por el grado de contribución al manuscrito.
	- SQ007		Utilizar personal de apoyo para realizar tareas de investigación sin incluirlos como autores.
	- SQ008		Adaptar los datos encontrados para que se ajusten a las hipótesis.
	- SQ009		Incluir a personas en el artículo que no participaron pero que requieren la publicación para fines académicos.
	- SQ010		Invitar a una persona a ser parte de un artículo por su reputación aun cuando no participe en la elaboración del mismo para garantizar su publicación.
	- SQ011		Incluir al líder del grupo de investigación como requisito del departamento/grupo.
	- SQ012		Incorporar datos poco relacionados con el objetivo principal de la investigación para que parezca que el contenido es más robusto.
	- SQ013		Dividir la información de los resultados para tener más documentos que publicar, aunque traten del mismo contenido y no aporten nada nuevo.
	- SQ014		Enviar el manuscrito a varias revistas al mismo tiempo para incrementar las posibilidades de publicación y reducir tiempos de espera.
	- SQ015		Leer solo los resúmenes de las publicaciones que se referencian para no consumir demasiado tiempo en la preparación de mi manuscrito.
	- SQ016		Adquisición/compra de bases de datos no recolectados por el grupo de investigación para desarrollar manuscritos.
	- SQ017		Mostrar resultados que favorecen ciertas tendencias en beneficio propio o de otros, aunque realmente no sean ciertas.
	- SQ018		Realizar diversas pruebas estadísticas hasta obtener los resultados esperados, aunque haya que "forzar" los datos en función de los intereses de la investigación.
	- SQ019		Cambiar la hipótesis inicial en función de los resultados obtenidos en el estudio.
	- SQ020		Usar información política para fines no académicos.
	- SQ021		Ampliar el tamaño muestral como requerimiento para publicar en una revista específica, aunque no se justifique estadísticamente.
	- SQ022		Utilizar datos sensibles sin solicitar permisos (p.e., consentimiento informado).
	- SQ023		No declarar que se pertenece a la organización que se favorece en los resultados de una investigación.
	- SQ024		Omitir al personal de apoyo en los agradecimientos.
	- SQ025		Utilizar contenido de otros como si fuese propio sin dar el crédito correspondiente en forma de cita bibliográfica.
	- SQ026		Citar trabajos de colegas como política del departamento/grupo.
	- SQ027		Parafrasear contenido para evitar citarlo aun cuando la idea reflejada en el artículo sea de otras personas.
	- SQ028		No declarar conflicto de intereses personales/económicos/políticos.

- malaspr:			Señale, de las opciones que se le presentan, aquellas que considera como malas prácticas en la investigación: *(Las variables generadas por esta pregunta se denominan como mp1, ..., mp28. Los posibles valores de cada una de esas variables son 1 = Sí, 2 = No)*

	- SQ001		Pagar a otras personas para la redacción del artículo o parte de este, aunque no hayan participado en la investigación.
	- SQ002		Añadir a personas con mayor autoridad académica que la mía (por ejemplo, quien dirige mi tesis), aunque no hayan colaborado en el desarrollo del manuscrito o de la investigación.
	- SQ003		Incluir familiares/amistades dentro de los artículos científicos solo por sus lazos afectivos.
	- SQ004		Citar trabajos como recomendación de la revista o revisores externos del manuscrito pese a que no tengan relación substancial con la investigación.
	- SQ005		Citar trabajos aunque no hayan sido leídos ni estudiados por las personas que firman el artículo.
	- SQ006		Establecer el orden de autoría de acuerdo a parámetros establecidos en el departamento/grupo y no por el grado de contribución al manuscrito.
	- SQ007		Utilizar personal de apoyo para realizar tareas de investigación sin incluirlos como autores.
	- SQ008		Adaptar los datos encontrados para que se ajusten a las hipótesis.
	- SQ009		Incluir a personas en el artículo que no participaron pero que requieren la publicación para fines académicos.
	- SQ010		Invitar a una persona a ser parte de un artículo por su reputación aun cuando no participe en la elaboración del mismo para garantizar su publicación.
	- SQ011		Incluir al líder del grupo de investigación como requisito del departamento/grupo.
	- SQ012		Incorporar datos poco relacionados con el objetivo principal de la investigación para que parezca que el contenido es más robusto.
	- SQ013		Dividir la información de los resultados para tener más documentos que publicar, aunque traten del mismo contenido y no aporten nada nuevo.
	- SQ014		Enviar el manuscrito a varias revistas al mismo tiempo para incrementar las posibilidades de publicación y reducir tiempos de espera.
	- SQ015		Leer solo los resúmenes de las publicaciones que se referencian para no consumir demasiado tiempo en la preparación de mi manuscrito.
	- SQ016		Adquisición/compra de bases de datos no recolectados por el grupo de investigación para desarrollar manuscritos.
	- SQ017		Mostrar resultados que favorecen ciertas tendencias en beneficio propio o de otros, aunque realmente no sean ciertas.
	- SQ018		Realizar diversas pruebas estadísticas hasta obtener los resultados esperados, aunque haya que "forzar" los datos en función de los intereses de la investigación.
	- SQ019		Cambiar la hipótesis inicial en función de los resultados obtenidos en el estudio.
	- SQ020		Usar información política para fines no académicos.
	- SQ021		Ampliar el tamaño muestral como requerimiento para publicar en una revista específica, aunque no se justifique estadísticamente.
	- SQ022		Utilizar datos sensibles sin solicitar permisos (p.e., consentimiento informado).
	- SQ023		No declarar que se pertenece a la organización que se favorece en los resultados de una investigación.
	- SQ024		Omitir al personal de apoyo en los agradecimientos.
	- SQ025		Utilizar contenido de otros como si fuese propio sin dar el crédito correspondiente en forma de cita bibliográfica.
	- SQ026		Citar trabajos de colegas como política del departamento/grupo.
	- SQ027		Parafrasear contenido para evitar citarlo aun cuando la idea reflejada en el artículo sea de otras personas.
	- SQ028		No declarar conflicto de intereses personales/económicos/políticos.

- otro:			Para terminar y si lo considera oportuno, por favor, utilice este espacio para hacer cualquier comentario que considere oportuno sobre este estudio o sobre el tópico investigado.
