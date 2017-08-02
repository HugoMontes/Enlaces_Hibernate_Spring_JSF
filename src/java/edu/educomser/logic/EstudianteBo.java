package edu.educomser.logic;

import edu.educomser.storage.pojo.Estudiante;
import java.util.List;

public interface EstudianteBo {
    public void save(Estudiante estudiante);
    public List<Estudiante> getAllEstudiantes(); 
}
