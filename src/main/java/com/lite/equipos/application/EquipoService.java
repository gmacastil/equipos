package com.lite.equipos.application;

import com.lite.equipos.domain.Equipo;
import com.lite.equipos.domain.EquipoRepository;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class EquipoService {
    private final EquipoRepository equipoRepository;

    public EquipoService(EquipoRepository equipoRepository) {
        this.equipoRepository = equipoRepository;
    }

    public Equipo crear(Equipo equipo) {
        return equipoRepository.save(equipo);
    }

    public Optional<Equipo> buscarPorId(Long id) {
        return equipoRepository.findById(id);
    }

    public List<Equipo> listarTodos() {
        return equipoRepository.findAll();
    }

    public Equipo actualizar(Long id, Equipo equipo) {
        equipo.setId(id);
        return equipoRepository.save(equipo);
    }

    public void eliminar(Long id) {
        equipoRepository.deleteById(id);
    }
}
