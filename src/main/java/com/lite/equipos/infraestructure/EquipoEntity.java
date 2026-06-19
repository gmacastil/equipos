package com.lite.equipos.infraestructure;

import jakarta.persistence.*;

@Entity
@Table(name = "equipos")
public class EquipoEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String nombre;
    private String estadio;
    private String ciudad;

    public EquipoEntity() {
    }

    public EquipoEntity(Long id, String nombre, String estadio, String ciudad) {
        this.id = id;
        this.nombre = nombre;
        this.estadio = estadio;
        this.ciudad = ciudad;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getEstadio() {
        return estadio;
    }

    public void setEstadio(String estadio) {
        this.estadio = estadio;
    }

    public String getCiudad() {
        return ciudad;
    }

    public void setCiudad(String ciudad) {
        this.ciudad = ciudad;
    }
}
