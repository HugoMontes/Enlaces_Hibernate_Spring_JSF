package edu.educomser.logic;

import edu.educomser.storage.dao.EstudianteDao;
import edu.educomser.storage.pojo.Estudiante;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class EstudianteBoImpl implements EstudianteBo {
    
    @Autowired
    private EstudianteDao estudianteDao;

    public EstudianteDao getEstudianteDao() {
        return estudianteDao;
    }

    public void setEstudianteDao(EstudianteDao estudianteDao) {
        this.estudianteDao = estudianteDao;
    }

    @Override
    public void save(Estudiante estudiante) {
        estudianteDao.save(estudiante);
    }

    @Override
    public List<Estudiante> getAllEstudiantes() {
        return estudianteDao.getAllEstudiantes();
    }
}
