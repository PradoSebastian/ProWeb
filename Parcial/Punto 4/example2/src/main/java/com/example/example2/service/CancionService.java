package com.example.example2.service;

import java.util.ArrayList;
import java.util.List;

import com.example.example2.exceptions.NotFoundException;
import com.example.example2.model.Autor;
import com.example.example2.model.Cancion;
import com.example.example2.model.CancionRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/songs")
class CancionService {

    @Autowired
    private CancionRepository repository;

    @GetMapping("/{id}")
    public Cancion findSongById(@PathVariable("id") Long songId) {
        Cancion aux = repository.findById(songId).orElseThrow(() -> new NotFoundException("Song not found"));
        return new Cancion(aux.getId(), aux.getNombre(), aux.getGenero());
    }

    @GetMapping("/{id}/authors")
    public Iterable<Autor> findAllEmployees(@PathVariable("id") Long songId) {
        // What happens if the company does not exist in the DB?
        List<Autor> aux =  repository.findById(songId).get().getAutores();
        List<Autor> resp = new ArrayList<>();

        for (Autor a : aux) 
        {
            resp.add(new Autor(a.getId(), a.getNombre()));    
        }
        return resp;
    }

}