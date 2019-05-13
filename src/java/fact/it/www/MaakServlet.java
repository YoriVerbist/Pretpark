/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fact.it.www;

import fact.it.www.beans.Attractie;
import fact.it.www.beans.Bezoeker;
import fact.it.www.beans.Personeelslid;
import fact.it.www.beans.Pretpark;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Yori Verbist
 * r0697651
 */
@WebServlet(name = "MaakServlet", urlPatterns = {"/MaakServlet"})
public class MaakServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        String type = request.getParameter("type");
        if(type.equals("bezoeker")){
            String voornaam = request.getParameter("voornaam");
            String achternaam = request.getParameter("achternaam");
            String attractie = request.getParameter("attractie");
            RequestDispatcher rd = request.getRequestDispatcher("Verwelkoming.jsp");
            
            Bezoeker bezoeker = new Bezoeker (voornaam, achternaam);

            if (!attractie.equals("Geen")) {
                bezoeker.voegToeAanWishlist(attractie);
            }
            
            if (request.getParameter("dubbel") != null) {
                String naamPretpark = request.getParameter("parken");
                Pretpark pretpark = new Pretpark(naamPretpark);
                pretpark.registreerBezoeker(bezoeker);
                rd = request.getRequestDispatcher("VerwelkomingMetPretpark.jsp");
                request.setAttribute("pretpark", pretpark);
            }

            
            request.setAttribute("bezoeker", bezoeker);
            request.setAttribute("attractie", attractie);
            rd.forward(request, response);
        }
        else if(type.equals("attractie")){
            //Haal info uit de forms
            String naamPretpark = request.getParameter("naamPretpark");
            String naamAttractie = request.getParameter("naamAttractie");
            String duurAttractieString = request.getParameter("duurAttractie");
            String naamFotoBestand = request.getParameter("naamFotoBestand");
            long duurAttractie = Long.parseLong(duurAttractieString);
            
            //maak nieuwe objecten
            Pretpark nieuwPretpark = new Pretpark(naamPretpark);
            Attractie attractie = new Attractie(naamAttractie, duurAttractie);
            attractie.setFoto(naamFotoBestand);
            nieuwPretpark.voegAttractieToe(attractie);
            
            //4 attracties hardcoderen voor 3.3
            Attractie attractie1 = new Attractie("Typhoon", 12);
            Attractie attractie2 = new Attractie("Sledge hammer", 8);
            Attractie attractie3 = new Attractie("Fury", 9);
            Attractie attractie4 = new Attractie("Dreamcather", 6);
            
            nieuwPretpark.voegAttractieToe(attractie1);
            nieuwPretpark.voegAttractieToe(attractie2);
            nieuwPretpark.voegAttractieToe(attractie3);
            nieuwPretpark.voegAttractieToe(attractie4);
            
            attractie1.setFoto("typhoon.jpg");
            attractie2.setFoto("sledge_hammer.jpg");
            attractie3.setFoto("fury.jpg");
            
            RequestDispatcher rd = request.getRequestDispatcher("OverzichtAttractie.jsp");
            request.setAttribute("nieuwPretpark", nieuwPretpark);
            request.setAttribute("attractie", attractie);
            rd.forward(request, response);
        }
        else if (type.equals("personeelslid")){
            String voorNaam = request.getParameter("voorNaam");
            String achterNaam = request.getParameter("achterNaam");
            
            Personeelslid personeelslid = new Personeelslid(voorNaam, achterNaam);
            
            RequestDispatcher rd = request.getRequestDispatcher("WelkomPersoneelslid.jsp");
            request.setAttribute("personeelslid", personeelslid);
            rd.forward(request, response);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
