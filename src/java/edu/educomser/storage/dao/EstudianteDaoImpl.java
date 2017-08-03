package edu.educomser.storage.dao;

import edu.educomser.storage.pojo.Estudiante;
import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class EstudianteDaoImpl implements EstudianteDao {

    private SessionFactory sessionFactory;
    private Session sesion;
    private Transaction tx;

    @Autowired
    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    private void iniciaOperacion() throws HibernateException {
        sesion = sessionFactory.openSession();
        tx = sesion.beginTransaction();
    }

    @Override
    public void save(Estudiante estudiante) {
        Estudiante est = null;
        try {
            iniciaOperacion();
            sesion.save(estudiante);
            tx.commit();
        } catch (HibernateException ex) {
            tx.rollback();
            System.out.println("Error al guardar: " + ex);
        } finally {
            sesion.close();
        }
    }

    @Override
    public List<Estudiante> getAllEstudiantes() {
        List<Estudiante> list = null;
        try {
            iniciaOperacion();
            list = sesion.createQuery("from Estudiante").list();
        } finally {
            sesion.close();
        }
        return list;
    }
}
