package edu.educomser.storage.dao;

import edu.educomser.storage.pojo.Estudiante;
import java.util.List;

public interface EstudianteDao {
    public void save(Estudiante estudiante);
    public List<Estudiante> getAllEstudiantes(); 
}
