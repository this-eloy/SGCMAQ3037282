/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author aluno
 */
public class TipoUsuario {
    private int id;
    private String modulo_administrativo;
    private String modulo_agendamento;
    private String modulo_atendimento;

    public TipoUsuario(int id) {
        setId(id);
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        if( id < 0 ) {
            throw new IllegalArgumentException("id não pode ser < 0");
        }
        this.id = id;
    }

    public String getModulo_administrativo() {
        return modulo_administrativo;
    }

    public void setModulo_administrativo(String modulo_administrativo) {
        if( modulo_administrativo == null ) {
            throw new IllegalArgumentException("senha não pode ser null");
        }
        this.modulo_administrativo = modulo_administrativo;
    }

    public String getModulo_agendamento() {
        return modulo_agendamento;
    }

    public void setModulo_agendamento(String modulo_agendamento) {
        if( modulo_agendamento == null ) {
            throw new IllegalArgumentException("senha não pode ser null");
        }
        this.modulo_agendamento = modulo_agendamento;
    }

    public String getModulo_atendimento() {
        return modulo_atendimento;
    }

    public void setModulo_atendimento(String modulo_atendimento) {
        if( modulo_atendimento == null ) {
            throw new IllegalArgumentException("senha não pode ser null");
        }
        this.modulo_atendimento = modulo_atendimento;
    }
     
   
}
