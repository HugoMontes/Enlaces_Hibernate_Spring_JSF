/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package test;

import edu.educomser.logic.EstudianteBo;
import edu.educomser.storage.pojo.Estudiante;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
/**
 *
 * @author Hugo
 */
public class ListaEstudiantes {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");
        EstudianteBo ebo = (EstudianteBo) context.getBean("estudianteBo");
        for (Estudiante e : ebo.getAllEstudiantes()) {
            System.out.println(e.getNombre());
        }
        System.exit(0);
    }
}
