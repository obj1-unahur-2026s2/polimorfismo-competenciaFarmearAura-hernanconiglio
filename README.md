# 🗿 Competencia de Farmear Aura

### Pautas para la resolución del ejercicio
Desarrollar la solución en los archivos:
- participantes.wlk
- desafios.wlk
- competencia.wlk

No realizar cambios en los nombres de los archivos, ya que las correcciones solo tienen en cuenta los objetos modelados en los mismos. 
Respecto a los nombres de objetos y nombres de mensajes a utilizar en el modelado, remitirse al **glosario** de "nombres obligatorios" que está al pie de este documento (respetar mayúsculas y minúsculas). Tener en cuenta que los métodos SIEMPRE tienen paréntesis, y a veces pueden tener parámetros y otras veces no. Si en la solución no se utilizan los nombres indicados en el glosario, los test de las correcciones no funcionarán y restan puntos de la calificación. Tener en cuenta también que pueden definir métodos y objetos auxiliares de ser necesario, pero los que figuran como obligatorios si o si tienen que existir para que corran los test, y deben cumplir la funcionalidad correcta.

---

### Enunciado

En esta competencia, distintos participantes intentan conseguir la mayor cantidad posible de **aura** realizando desafíos.

Para esta primera versión conocemos a tres participantes:

- `derek`
- `matilda`
- `jacobim`

Y conocemos tres desafíos:

- `miradaAlInfinito`
- `caminarBajoLaLluvia`
- `entradaTriunfal`


> **Importante:** que en esta versión existan solamente estos participantes y desafíos, no significa que el dominio esté limitado a ellos. En el futuro podrían incorporarse nuevos participantes y nuevos desafíos **sin tener que modificar a ningún objeto de este dominio**.

---

## La competencia

La **competencia** tiene la responsabilidad es **gestionar y administrar la competencia**: indica quién realiza qué desafío y se ocupa de que el participante correspondiente haga la acción de farmear aura.


La competencia debe poder trabajar con cualquiera de los participantes y cualquiera de los desafíos que formen parte del dominio.

> **No se deben utilizar colecciones.** Para este ejercicio no es necesario que `competencia` tenga una lista de participantes ni una lista de desafíos. La competencia solo se ocupa de indicar a quién va a farmear qué desafío va a realizar.

---

## Los participantes

Cada participante tiene una cantidad de aura acumulada, que inicialmente es **0** y nunca puede ser menor que ese valor ni mayor que 1000. Se le debe poder preguntar a cada participante cual es su cantidad actual de aura acumulada. 

### Derek

Derek es un **sigma silencioso**.

Cada vez que realiza un desafío, cualquiera sea, consigue **100 puntos de aura**.

### Matilda

Matilda se destaca por hacer jugadas de película.

- Si el desafío es épico, consigue **200 puntos de aura**.
- Si el desafío no es épico, y tiene menos de 50 espectadores, pierde **50 puntos de aura**. En cualquier otro caso no pasa nada (no suma ni resta aura)

### Jacobim

Jacobim es un estratega.

Consigue **3 puntos de aura por cada espectador del desafío** + un 10% del aura que tiene acumulada al momento de hacer el desafío.

---

## Los desafíos

De cada desafío nos interesa saber:

- la cantidad de espectadores que tiene (en algunos puede cambiar, en otros no).
- si es épico o no.

Algunos desafíos siempre son épicos, otros nunca lo son y otros  lo serán según lo determine el juez universal en materia de trending de farmeo de aura, que es el swag (Social Watching Advisory Group). 

### `miradaAlInfinito`

- tiene 20 espectadores siempre.
- Nunca es épico.

### `caminarBajoLaLluvia`

- tiene 100 espectadores siempre.
- Es épico siempre.

### `entradaTriunfal`

- tiene 50 espectadores al inicio pero puede cambiar en cualquier momento.
- Será épico según lo determine el SWAG.

---

### S.W.A.G. — Social Trend Watching Advisory Group

Informará como épico un desafío si quién farmea aura tiene más de un mínimo que al inicio es de 200 puntos de aura. Esto es responsabilidad exclusivamente de swag, y ese valor minimo puede ser modificado solo por swag en cualquier momento de la competencia. 

## Comportamiento esperado

La competencia debe poder indicarle a un personaje que realice un desafío (farmearAura), y el personaje debe sufrir las consecuencias.

---

## Restricciones

Resolver utilizando únicamente los conceptos trabajados hasta el momento:

- objetos;
- mensajes;
- mensajes con parámetros;
- referencias;
- atributos y estado;
- encapsulamiento;
- polimorfismo.

**No utilizar:**

- clases;
- herencia;
- colecciones;
- conceptos avanzados que no sean necesarios para resolver el problema.

---

## Consideraciones para el diseño

Agregar nuevos participantes o nuevos desafíos **no debería requerir modificar la lógica de la competencia ni la de los demás participantes o desafíos**.

La solución debe modelar el comportamiento del dominio, y producir los resultados esperados para los ejemplos dados.


### Glosario de nombres de objeto y mensajes obligatorios

**Objetos**
- caminarBajoLaLluvia
- competencia
- derek
- entradaTriunfal
- jacobim
- matilda
- miradaAlInfinito
- swag
 

**Mensajes**
- aura
- cambiarEspectadores
- cambiarMinimoDeAura
- esEpico
- espectadores
- farmearAura
- realizarDesafio