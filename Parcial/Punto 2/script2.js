var numPersonas = 3;

function agregarFila ()
{
    numPersonas ++;
    
    let bodyTabla = document.getElementById("bodyTabla");
    let fila = document.createElement("tr");
    let col1 = document.createElement("td");
    let num = document.createTextNode(numPersonas);
    col1.appendChild(num);
    fila.appendChild(col1);
    let col2 = document.createElement("td");
    let aux1 = document.createElement("input");
    aux1.setAttribute("type", "text");
    col2.appendChild(aux1);
    fila.appendChild(col2);
    let col3 = document.createElement("td");
    let aux2 = document.createElement("input");
    aux2.setAttribute("type", "text");
    col3.appendChild(aux2);
    fila.appendChild(col3);

    bodyTabla.appendChild(fila);
    console.log("Se agregó fila: "+ numPersonas);
}

function eliminarUltimaFila()
{
    if(numPersonas>1)
    {
        numPersonas--;
        let bodyTabla = document.getElementById("bodyTabla");
        let ultima = bodyTabla.children[numPersonas];
        console.log(ultima);
        bodyTabla.removeChild(ultima);
        console.log("Se eliminó la ultima fila: " + (numPersonas+1));
    }
    else
    {
        console.log("No se pueden eliminar filas cuando solo queda una");
    }
    
}