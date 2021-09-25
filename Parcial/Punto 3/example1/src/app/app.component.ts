import { Component, ViewChild } from '@angular/core';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  
  numPersonas = 3;

  persona1 = 
  {
    id: 1,
    cedula: 578358931,
    nombre: 'Alicia'
  };

  persona2 = 
  {
    id: 2,
    cedula: 562425,
    nombre: 'Bob'
  };

  persona3 = 
  {
    id: 3,
    cedula: 746763,
    nombre: 'Charles'
  };

  personas = [this.persona1, this.persona2, this.persona3];

  agregarFila()
  {
    this.numPersonas++;
     let persona = 
    {
      id: this.numPersonas,
      cedula: null,
      nombre: null
    };
    this.personas.push(persona);
    console.log("Se agregó una persona vacia con id: " + this.numPersonas);
  }

  eliminarUltimaFila()
  {
    if(this.numPersonas>1)
    {
      this.personas.pop();
      console.log("Se elimino a la persona con id: " + this.numPersonas);
      this.numPersonas--;
    }
    else
    {
      console.log("No se pueden eliminar personas cuando solo queda una");
    }
    
  }

  actualizarCedula(persona, event)
  {
    let cedula = event.target.value;
    this.personas[persona.id-1].cedula = +cedula;
    console.log("Se modifico la cedula de la persona " + persona.id + " a " + persona.cedula);
  }
  
  actualizarNombre(persona, event)
  {
    let nombre = event.target.value;
    this.personas[persona.id-1].nombre = nombre;
    console.log("Se modifico el nombre de la persona " + persona.id + " a " + persona.nombre);
  }

}
