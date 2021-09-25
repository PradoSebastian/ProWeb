using System;
using System.Collections.Generic;
using Taller.Net;

namespace Sesion1Net
{
    class Program
    {
        static void Main(string[] args)
        {
            int opcion;
            String nombre;
            String apellido;
            int identificacion;
            int edad;
            String esCliente;
            PersonaLogica pLogica = new PersonaLogica();
            Console.WriteLine("Bienvenido a la consola de Personas");
            do
            {
                Console.WriteLine("\nOpciones permitidas: ");
                Console.WriteLine("1. Agregar una persona");
                Console.WriteLine("2. Visualizar las personas registradas actualmente");
                Console.WriteLine("3. Salir de la consola");
                Console.WriteLine("Digite el número de la opción deseada: ");
        
                opcion = Int32.Parse(Console.ReadLine());

                if(opcion == 1)
                {
                    Console.WriteLine("\nIngrese el nombre de la persona: ");
                    nombre = Console.ReadLine();
                    Console.WriteLine("\nIngrese el apellido de la persona: ");
                    apellido = Console.ReadLine();
                    Console.WriteLine("\nIngrese la identificación de la persona: ");
                    identificacion = Int32.Parse(Console.ReadLine());
                    Console.WriteLine("\nIngrese la edad de la persona: ");
                    edad = Int32.Parse(Console.ReadLine());
                    Console.WriteLine("\nIngrese si la persona es o no cliente (Si/No): ");
                    esCliente = Console.ReadLine();
                    Boolean esClien = false;
                    if(esCliente == "Si")
                    {
                        esClien = true;
                    }

                    pLogica.AgregarPersona(nombre, apellido, identificacion, edad, esClien);
                    Console.WriteLine("Se agregó la persona con exito\n");
                }
                else if(opcion == 2)
                {
                    var lista = pLogica.GetPersonas();
                    if(lista.Count >0)
                    { 
                        //Mostrar Personas Registradas
                        Console.WriteLine("+--------------------+--------------------+--------------------+----+------------+-------------------------+");
                        Console.WriteLine(String.Format("|{0,20}|{1,20}|{2,20}|{3,4}|{4,12}|{5,25}|", "Nombre", "Apellido", "Identificación", "Edad", "¿Es Cliente?", "Fecha de Registro"));
                        Console.WriteLine("+--------------------+--------------------+--------------------+----+------------+-------------------------+");
                        String esCli;
                        foreach(var persona in lista)
                        {
                            esCli = "No";
                            if(persona.EsCliente)
                            {
                                esCli = "Si";
                            }
                            Console.WriteLine(String.Format("|{0,20}|{1,20}|{2,20}|{3,4}|{4,12}|{5,25}|", persona.Nombre, persona.Apellido, persona.Identificacion, persona.Edad, esCli, persona.FechaHoraRegistro));
                            Console.WriteLine("+--------------------+--------------------+--------------------+----+------------+-------------------------+");
                        }
                    }
                    else
                    {
                        Console.WriteLine("No hay personas registradas para mostrar\n");
                    }
                }
                else if(opcion == 3)
                {
                    Console.WriteLine("Ejecución Finalizada");
                }
                else
                {
                    Console.WriteLine("Opción erronea ...");
                    Console.WriteLine("Por Favor ingrese la opción correctamente ...");
                }
            } while (opcion != 3);

        }
    }
}
