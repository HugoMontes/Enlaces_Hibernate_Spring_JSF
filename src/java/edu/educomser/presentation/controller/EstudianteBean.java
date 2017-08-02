/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.educomser.presentation.controller;

import edu.educomser.logic.EstudianteBo;
import edu.educomser.storage.pojo.Estudiante;
import java.io.Serializable;
import java.util.List;
import javax.annotation.PostConstruct;
import javax.faces.application.FacesMessage;
import javax.faces.bean.RequestScoped;
import javax.faces.context.FacesContext;
import javax.inject.Named;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *
 * @author Hugo
 */
@Named(value = "estudianteBean")
@RequestScoped
public class EstudianteBean implements Serializable{

    private Estudiante estudiante;
    private List<Estudiante> listaEstudiantes;
    
    @Autowired
    private EstudianteBo estudianteBo;
    
    public EstudianteBean(){
    }
    
    @PostConstruct
    public void init(){
        estudiante=new Estudiante();
        listaEstudiantes=estudianteBo.getAllEstudiantes();
    }
    
    public void guardarEstudiante(){
        estudianteBo.save(estudiante);
        showMessage("Estudiante guardado exitosamente.");
        estudiante=null;
        listaEstudiantes=estudianteBo.getAllEstudiantes();
    }
    
    public void showMessage(String mensaje){
        FacesMessage message=new FacesMessage(FacesMessage.SEVERITY_INFO,mensaje,null);
        FacesContext.getCurrentInstance().addMessage(null, message);
    }

    public EstudianteBo getEstudianteBo() {
        return estudianteBo;
    }

    public void setEstudianteBo(EstudianteBo estudianteBo) {
        this.estudianteBo = estudianteBo;
    }

    public Estudiante getEstudiante() {
        return estudiante;
    }

    public void setEstudiante(Estudiante estudiante) {
        this.estudiante = estudiante;
    }

    public List<Estudiante> getListaEstudiantes() {
        return listaEstudiantes;
    }

    public void setListaEstudiantes(List<Estudiante> listaEstudiantes) {
        this.listaEstudiantes = listaEstudiantes;
    }   
}
