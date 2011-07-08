package com.cv

import grails.converters.JSON

class FondController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [fondInstanceList: Fond.list(params), fondInstanceTotal: Fond.count()]
    }

    def create = {
        def fondInstance = new Fond()
        fondInstance.properties = params
        return [fondInstance: fondInstance]
    }

    def save = {
        def fondInstance = new Fond(params)
        if (fondInstance.save(flush: true)) {
            flash.message = message(code: 'default.created.message', args: [message(code: 'fond.label', default: 'Fond'), fondInstance.id])
            redirect(action: "show", id: fondInstance.id)
        }
        else {
            render(view: "create", model: [fondInstance: fondInstance])
        }
    }

    def show = {
        def fondInstance = Fond.get(params.id)
        if (!fondInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'fond.label', default: 'Fond'), params.id])
            redirect(action: "list")
        }
        else {
            [fondInstance: fondInstance]
        }
    }

    def edit = {
        def fondInstance = Fond.get(params.id)
        if (!fondInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'fond.label', default: 'Fond'), params.id])
            redirect(action: "list")
        }
        else {
            return [fondInstance: fondInstance]
        }
    }

    def update = {
        def fondInstance = Fond.get(params.id)
        if (fondInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (fondInstance.version > version) {

                    fondInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'fond.label', default: 'Fond')] as Object[], "Another user has updated this Fond while you were editing")
                    render(view: "edit", model: [fondInstance: fondInstance])
                    return
                }
            }
            fondInstance.properties = params
            if (!fondInstance.hasErrors() && fondInstance.save(flush: true)) {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'fond.label', default: 'Fond'), fondInstance.id])
                redirect(action: "show", id: fondInstance.id)
            }
            else {
                render(view: "edit", model: [fondInstance: fondInstance])
            }
        }
        else {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'fond.label', default: 'Fond'), params.id])
            redirect(action: "list")
        }
    }

    def delete = {
        def fondInstance = Fond.get(params.id)
        if (fondInstance) {
            try {
                fondInstance.delete(flush: true)
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'fond.label', default: 'Fond'), params.id])
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'fond.label', default: 'Fond'), params.id])
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'fond.label', default: 'Fond'), params.id])
            redirect(action: "list")
        }
    }
}
