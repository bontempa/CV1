package com.cv

import grails.converters.JSON
import grails.plugins.springsecurity.Secured

class UtilisateurController {

    def springSecurityService

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    @Secured(['ROLE_USER_ALEX'])
    def index = {
        redirect(action: "list", params: params)
    }

     @Secured(['ROLE_USER_ALEX'])
	def list = {
		params.max = Math.min(params.max ? params.int('max') : 10, 100)
		[utilisateurInstanceList: Utilisateur.list(params), utilisateurInstanceTotal: Utilisateur.count()]
	}

     @Secured(['ROLE_USER_ALEX'])
    def create = {
        def utilisateurInstance = new Utilisateur()
        utilisateurInstance.properties = params
        return [utilisateurInstance: utilisateurInstance]
    }

     @Secured(['ROLE_USER_ALEX'])
    def save = {
        def utilisateurInstance = new Utilisateur(params)
        if (utilisateurInstance.save(flush: true)) {
            flash.message = message(code: 'default.created.message', args: [message(code: 'utilisateur.label', default: 'Utilisateur'), utilisateurInstance.id])
            redirect(action: "show", id: utilisateurInstance.id)
        }

         def alexRole = Role.findByAuthority('ROLE_USER_ALEX')
                def user1
                user1 = User.findByUsername(utilisateurInstance.pseudo) ?: new User(
                         username: utilisateurInstance.pseudo,
                         password: springSecurityService.encodePassword(utilisateurInstance.mdp),
                         enabled: true).save(failOnError: true)

                 if (!user1.authorities.contains(alexRole)) {
                     UserRole.create user1, alexRole
     }

        else {
            render(view: "create", model: [utilisateurInstance: utilisateurInstance])
        }
    }

     @Secured(['ROLE_USER_ALEX'])
    def show = {
        def utilisateurInstance = Utilisateur.get(params.id)
        if (!utilisateurInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'utilisateur.label', default: 'Utilisateur'), params.id])
            redirect(action: "list")
        }
        else {
            [utilisateurInstance: utilisateurInstance]
        }
    }

     @Secured(['ROLE_USER_ALEX'])
    def edit = {
        def utilisateurInstance = Utilisateur.get(params.id)
        if (!utilisateurInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'utilisateur.label', default: 'Utilisateur'), params.id])
            redirect(action: "list")
        }
        else {
            return [utilisateurInstance: utilisateurInstance]
        }
    }

     @Secured(['ROLE_USER_ALEX'])
    def update = {
        def utilisateurInstance = Utilisateur.get(params.id)
        if (utilisateurInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (utilisateurInstance.version > version) {
                    
                    utilisateurInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'utilisateur.label', default: 'Utilisateur')] as Object[], "Another user has updated this Utilisateur while you were editing")
                    render(view: "edit", model: [utilisateurInstance: utilisateurInstance])
                    return
                }
            }
            utilisateurInstance.properties = params
            if (!utilisateurInstance.hasErrors() && utilisateurInstance.save(flush: true)) {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'utilisateur.label', default: 'Utilisateur'), utilisateurInstance.id])
                redirect(action: "show", id: utilisateurInstance.id)
            }
            else {
                render(view: "edit", model: [utilisateurInstance: utilisateurInstance])
            }
        }
        else {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'utilisateur.label', default: 'Utilisateur'), params.id])
            redirect(action: "list")
        }
    }

     @Secured(['ROLE_USER_ALEX'])
    def delete = {
        def utilisateurInstance = Utilisateur.get(params.id)
        if (utilisateurInstance) {
            try {
                utilisateurInstance.delete(flush: true)
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'utilisateur.label', default: 'Utilisateur'), params.id])
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'utilisateur.label', default: 'Utilisateur'), params.id])
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'utilisateur.label', default: 'Utilisateur'), params.id])
            redirect(action: "list")
        }
    }
}
