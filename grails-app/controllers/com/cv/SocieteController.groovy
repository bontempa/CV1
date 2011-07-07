package com.cv

import grails.converters.JSON

class SocieteController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [societeInstanceList: Societe.list(params), societeInstanceTotal: Societe.count()]
    }

    def create = {
        def societeInstance = new Societe()
        societeInstance.properties = params
        return [societeInstance: societeInstance]
    }

    def save = {
        def societeInstance = new Societe(params)
        if (societeInstance.save(flush: true)) {
            flash.message = message(code: 'default.created.message', args: [message(code: 'societe.label', default: 'Societe'), societeInstance.id])
            redirect(action: "show", id: societeInstance.id)
        }
        else {
            render(view: "create", model: [societeInstance: societeInstance])
        }
    }

    def show = {
        def societeInstance = Societe.get(params.id)
        if (!societeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'societe.label', default: 'Societe'), params.id])
            redirect(action: "list")
        }
        else {
            [societeInstance: societeInstance]
        }
    }

    def edit = {
        def societeInstance = Societe.get(params.id)
        if (!societeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'societe.label', default: 'Societe'), params.id])
            redirect(action: "list")
        }
        else {
            return [societeInstance: societeInstance]
        }
    }

    def update = {
        def societeInstance = Societe.get(params.id)
        if (societeInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (societeInstance.version > version) {

                    societeInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'societe.label', default: 'Societe')] as Object[], "Another user has updated this Societe while you were editing")
                    render(view: "edit", model: [societeInstance: societeInstance])
                    return
                }
            }
            societeInstance.properties = params
            if (!societeInstance.hasErrors() && societeInstance.save(flush: true)) {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'societe.label', default: 'Societe'), societeInstance.id])
                redirect(action: "show", id: societeInstance.id)
            }
            else {
                render(view: "edit", model: [societeInstance: societeInstance])
            }
        }
        else {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'societe.label', default: 'Societe'), params.id])
            redirect(action: "list")
        }
    }

    def delete = {
        def societeInstance = Societe.get(params.id)
        if (societeInstance) {
            try {
                societeInstance.delete(flush: true)
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'societe.label', default: 'Societe'), params.id])
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'societe.label', default: 'Societe'), params.id])
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'societe.label', default: 'Societe'), params.id])
            redirect(action: "list")
        }
    }
}
