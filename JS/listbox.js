var alumnos = [
"Aguado Pérez, Xavi",
"Álvarez Rodríguez, Juan",
"Delgado Martínez, Mari",
"Fernández Fernández, Petra",
"Hernández Pérez, Julia",
"Jiménez Ochoa, Raúl",
"Jiménez Zato, Jose",
"Rodríguez Fernández, Alberto",
"Simeone, Dieg"
]

function onload(){
	for(var i = 0; i< alumnos.length; i++){
		var d = document.querySelector('#alumnos_izq');
		var p = document.createElement("p");
		p.setAttribute("onclick","pasaralumnos_der()");
		p.innerHTML = alumnos[i];
		d.appendChild(p);
	};
}

var aux;
function pasaralumnos_der(){
	aux = event.target.innerHTML;
	event.target.remove();
	var d = document.querySelector('#alumnos_der');
	var p = document.createElement("p");
	p.setAttribute("onclick","pasaralumnos_izq()");
	p.innerHTML = aux;
	d.appendChild(p);

}

function pasaralumnos_izq(){
	aux = event.target.innerHTML;
	event.target.remove();
	var d = document.querySelector('#alumnos_izq');
	var p = document.createElement("p");
	p.setAttribute("onclick","pasaralumnos_der()");
	p.innerHTML = aux;
	d.appendChild(p);
}