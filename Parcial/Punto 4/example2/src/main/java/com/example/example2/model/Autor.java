package com.example.example2.model;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToMany;

@Entity
public class Autor {

    @Id
    @GeneratedValue
    private Long id;

    private String nombre;

    @ManyToMany(mappedBy = "autores")
    private List<Cancion> canciones;

    public Autor()
    {
        
    }

    public Autor(Long id, String nom, List<Cancion> canciones)
    {
        this.id = id;
        this.nombre = nom;
        this.canciones = canciones;     
    }

    public Autor(Long id, String nom)
    {
        this.id = id;
        this.nombre = nom;
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
     * @return las canciones
     */
    public List<Cancion> getCanciones() {
        return canciones;
    }

    /**
     * @param canciones las canciones a cambiar
     */
    public void setCanciones(List<Cancion> canciones) {
        this.canciones = canciones;
    }
}