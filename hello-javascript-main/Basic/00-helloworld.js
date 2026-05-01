var alumnoSeleccionado = "Ana";
var nota = 0;

if (nota === "") {
    console.log("ERROR: No has introducido nota");
} else {
    console.log("Nota registrada:", nota);
}

var alumnos = ["Ana", "Luis", "Marta"];

for (var alumnoSeleccionado = 0; alumnoSeleccionado < alumnos.length; alumnoSeleccionado++) {
    console.log("Procesando alumno:", alumnos[alumnoSeleccionado]);
}

var ejercicios = [2, 1, 4];
var puntosTotales = 0;

// ** Queremos recorrer los ejercicios dos veces **
for (i = 0; i < ejercicios.length; i++) {
    for (i = 0; i < 2; i++) {
        puntosTotales += ejercicios[0];
    }
}

console.log("Alumno seleccionado:", alumnoSeleccionado);
console.log("Puntos totales:", puntosTotales);