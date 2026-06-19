package com.lite.equipos.domain;

import java.util.List;
import java.util.Optional;

public interface EquipoRepository {
    Equipo save(Equipo equipo);
    Optional<Equipo> findById(Long id);
    List<Equipo> findAll();
    void deleteById(Long id);
}
