/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package aulas.rotalogica.servlet.getpost;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.PrintWriter;
import java.util.ArrayList;

/**
 *
 * @author aluno
 */
@WebServlet(name = "GetPost", urlPatterns = {"/aulas/rotalogica/servlet/getpost"})
public class GetPost extends HttpServlet {

    private ArrayList<DadosFormulario> dados;
    
    @Override
    public void init() throws ServletException {
        dados = new ArrayList<>();
    
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {  
        // o parametro é o name no html
        String campoA = request.getParameter("campoA");
        String opcaoA = request.getParameter("opcaoA");
        String opcaoB = request.getParameter("opcaoB");
        
        System.out.println(campoA + " " + opcaoA + " " + opcaoB);
        
        DadosFormulario df = new DadosFormulario();
        df.setCampoA(campoA);
        df.setOpcaoA(opcaoA);
        df.setOpcaoB(opcaoB);
        
        dados.add(df);
        
        System.out.println(dados);
        
        String html = "";
     
        html += "<!DOCTYPE html>";
 
        html+= "<html>";
        html+= "<head>";
        html+= "<title>Dados Recebidos Formulario</title>";
        html+= "</head>";
        html+= "<body>";
        html+= "<h1>Dados Recebidos Formulario</h1>";
        
        html+= "<table>";
        
        html+= "<tr>";
        
        html+= "<th> Campo A</th>";
        html+= "<th> Opcao A</th>";
        html+= "<th> Opcao A</th>";
        
        html+= "</tr>";
        
        for(DadosFormulario d: dados){
            html+= "<tr>";
            html += "<td>" + d.getCampoA() + "</td>";
            html += "<td>" + d.getOpcaoA() + "</td>";
            html += "<td>" + d.getOpcaoB() + "</td>";
            html+= "</tr>";
        }
        
        html+= "</table>";
        html += "<button onclick=\"window.location.href='/sgcmaq3037282/aulas/rotafisica/servlet/getpost/formulario_getpost.html'\">Adicionar</button>";
    
        html+= "</body>";
        html+= "</html>";
        
        response.setContentType("text.html");
        PrintWriter pw = response.getWriter();
        pw.write(html);
        pw.close();
        
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("\n\n GET \n\n");
        processRequest(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("\n\n POST \n\n");
        processRequest(req, resp);
    }
 
    @Override
    public void destroy() {
        dados.clear();
        dados = null;
    }
    
    

}
