package com.example.example2.model;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToMany;

@Entity
public class Cancion {

    @Id
    @GeneratedValue
    private Long id;

    private String nombre;

    private String genero;

    @ManyToMany
   private List<Autor> autores;

   public Cancion()
   {
       
   }

    public Cancion(Long id, String nom, String gen)
    {
        this.id = id;
        this.nombre = nom;
        this.genero = gen;
    }

    public Cancion(Long id, String nom, String gen, List<Autor> autores)
    {
        this.id = id;
        this.nombre = nom;
        this.genero = gen;
        this.autores = autores;
    }

    /**
     * @return el id
     */
    public Long getId() {
        return id;
    }

    /**
     * @param id el id a cambiar
     */
    public void setId(Long id) {
        this.id = id;
    }

    /**
     * @return el nombre
     */
    public String getNombre() {
        return nombre;
    }

    /**
     * @param nombre el nombre a cambiar
     */
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    /**
     * @return el genero
     */
    public String getGenero() {
        return genero;
    }

    /**
     * @param genero el genero a cambiar
     */
    public void setGenero(String genero) {
        this.genero = genero;
    }

    /**
     * @return los autores
     */
    public List<Autor> getAutores() {
        return autores;
    }

    /**
     * @param autores los autores a cambiar
     */
    public void setEmployees(List<Autor> autores) {
        this.autores = autores;
    }
}