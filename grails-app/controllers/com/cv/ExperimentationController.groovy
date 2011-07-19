package com.cv

import grails.converters.JSON

class ExperimentationController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)

         def typeList = []
         def quantiteList = []
         def demoList = Experimentation.list(params)
         demoList.each {
          typeList << it.type
          quantiteList << it.quantite
         }

        def typeListString = typeList as String[]
        def chartData=[['Initialsation', 0]]

        for(int i=0; i<Experimentation.list().size(); i++)
        {
        chartData.add([typeListString[i], quantiteList[i]]);
        }

        [experimentationInstanceList: Experimentation.list(params), experimentationInstanceTotal: Experimentation.count(), chartData: chartData]
    }

    def create = {
        def experimentationInstance = new Experimentation()
        experimentationInstance.properties = params
        return [experimentationInstance: experimentationInstance]
    }

    def save = {
        def experimentationInstance = new Experimentation(params)
        if (experimentationInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'experimentation.label', default: 'Experimentation'), experimentationInstance.id])}"
            redirect(action: "show", id: experimentationInstance.id)
        }
        else {
            render(view: "create", model: [experimentationInstance: experimentationInstance])
        }
    }

    def show = {
        def experimentationInstance = Experimentation.get(params.id)
        if (!experimentationInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'experimentation.label', default: 'Experimentation'), params.id])}"
            redirect(action: "list")
        }
        else {
            [experimentationInstance: experimentationInstance]
        }
    }

    def edit = {
        def experimentationInstance = Experimentation.get(params.id)
        if (!experimentationInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'experimentation.label', default: 'Experimentation'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [experimentationInstance: experimentationInstance]
        }
    }

    def update = {
        def experimentationInstance = Experimentation.get(params.id)
        if (experimentationInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (experimentationInstance.version > version) {

                    experimentationInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'experimentation.label', default: 'Experimentation')] as Object[], "Another user has updated this Experimentation while you were editing")
                    render(view: "edit", model: [experimentationInstance: experimentationInstance])
                    return
                }
            }
            experimentationInstance.properties = params
            if (!experimentationInstance.hasErrors() && experimentationInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'experimentation.label', default: 'Experimentation'), experimentationInstance.id])}"
                redirect(action: "show", id: experimentationInstance.id)
            }
            else {
                render(view: "edit", model: [experimentationInstance: experimentationInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'experimentation.label', default: 'Experimentation'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
        def experimentationInstance = Experimentation.get(params.id)
        if (experimentationInstance) {
            try {
                experimentationInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'experimentation.label', default: 'Experimentation'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'experimentation.label', default: 'Experimentation'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'experimentation.label', default: 'Experimentation'), params.id])}"
            redirect(action: "list")
        }
    }

    def maliste = {
        def alex = Experimentation.list()
        def results = alex?.collect {
			[
				 text: [it.type],
				 leaf: true
			]
		}

        def json = results as JSON

        response.setHeader('Content-disposition', 'filename="json"')
        response.contentType = "text/json";
        render (json) as JSON
    }

    def malistea = {
        def alex = Experimentation.list()
        def results = alex?.collect {
			[
				 type: [it.type],
				 quantite: [it.quantite]
			]
		}

        def json = results as JSON

        response.setHeader('Content-disposition', 'filename="json"')
        response.contentType = "text/json";
        render (json) as JSON
    }
}
