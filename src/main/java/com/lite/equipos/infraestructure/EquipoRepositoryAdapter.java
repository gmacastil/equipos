package com.lite.equipos.infraestructure;

import com.lite.equipos.domain.Equipo;
import com.lite.equipos.domain.EquipoRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Repository
public class EquipoRepositoryAdapter implements EquipoRepository {
    private final JpaEquipoRepository jpaEquipoRepository;

    public EquipoRepositoryAdapter(JpaEquipoRepository jpaEquipoRepository) {
        this.jpaEquipoRepository = jpaEquipoRepository;
    }

    @Override
    public Equipo save(Equipo equipo) {
        EquipoEntity entity = toEntity(equipo);
        EquipoEntity saved = jpaEquipoRepository.save(entity);
        return toDomain(saved);
    }

    @Override
    public Optional<Equipo> findById(Long id) {
        return jpaEquipoRepository.findById(id).map(this::toDomain);
    }

    @Override
    public List<Equipo> findAll() {
        return jpaEquipoRepository.findAll().stream()
                .map(this::toDomain)
                .collect(Collectors.toList());
    }

    @Override
    public void deleteById(Long id) {
        jpaEquipoRepository.deleteById(id);
    }

    private EquipoEntity toEntity(Equipo equipo) {
        return new EquipoEntity(equipo.getId(), equipo.getNombre(), equipo.getEstadio(), equipo.getCiudad());
    }

    private Equipo toDomain(EquipoEntity entity) {
        return new Equipo(entity.getId(), entity.getNombre(), entity.getEstadio(), entity.getCiudad());
    }
}
