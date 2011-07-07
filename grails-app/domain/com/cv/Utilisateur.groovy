package com.cv

class Utilisateur {

    String nom
    String prenom
    String pseudo
    String mdp

    static constraints = {
        nom blank: false
        prenom blank: false
        pseudo blank: false
        mdp blank: false
    }
}
