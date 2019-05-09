/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fact.it.www.beans;

import java.util.ArrayList;

/**
 *
 * @author Yori Verbist
 * r0697651
 */
public class Pretpark {
    private String naam;
    private int aantalBezoekers;
    private ArrayList<Attractie> attracties = new ArrayList<>();

    public Pretpark(String naam) {
        this.naam = naam;
    }

    public String getNaam() {
        return naam;
    }

    public void setNaam(String naam) {
        this.naam = naam;
    }

    public ArrayList<Attractie> getAttracties() {
        return attracties;
    }
    
    public int getAantalAttracties() {
        return attracties.size();
    }
    
    public void voegAttractieToe(Attractie attractie){
        attracties.add(attractie);
    }

    public Attractie zoekAttractieOpNaam(String naam) {
        for(Attractie attractie: attracties){
            if(attractie.getNaam().equals(naam)){
                return attractie;
            }
        }
        return null;
    }
    
    public void registreerBezoeker(Bezoeker bezoeker){
        aantalBezoekers ++;
        bezoeker.setPretparkcode(aantalBezoekers);
    }
    
}
