<%@ page import="com.cv.Experimentation" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="layout" content="main"/>
    <g:set var="entityName" value="${message(code: 'experimentation.label', default: 'Experimentation')}"/>
    <title><g:message code="default.create.label" args="[entityName]"/></title>
</head>

<body>
<div class="nav">
    <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label"
                                                                           args="[entityName]"/></g:link></span>
</div>

<div class="body">
    <h1><g:message code="default.create.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message">${flash.message}</div>
    </g:if>
    <g:hasErrors bean="${experimentationInstance}">
        <div class="errors">
            <g:renderErrors bean="${experimentationInstance}" as="list"/>
        </div>
    </g:hasErrors>
    <g:form action="save">
        <div class="dialog">
            <table>
                <tbody>

                <tr class="prop">
                    <td valign="top" class="name">
                        <label for="type"><g:message code="experimentation.type.label" default="Type"/></label>
                    </td>
                    <td valign="top" class="value ${hasErrors(bean: experimentationInstance, field: 'type', 'errors')}">
                        <g:textField name="type" value="${experimentationInstance?.type}"/>
                    </td>
                </tr>
                   <tr class="prop">
                    <td valign="top" class="name">
                        <label for="quantite"><g:message code="experimentation.quantite.label"
                                                         default="Quantite"/></label>
                    </td>
                    <td valign="top"
                        class="value ${hasErrors(bean: experimentationInstance, field: 'quantite', 'errors')}">
                        <g:textField name="quantite"
                                     value="${fieldValue(bean: experimentationInstance, field: 'quantite')}"/>
                    </td>
                </tr>
                <tr class="prop">
                    <td valign="top" class="name">
                        <label for="annee"><g:message code="experimentation.annee.label" default="Annee"/></label>
                    </td>
                    <td valign="top"
                        class="value ${hasErrors(bean: experimentationInstance, field: 'annee', 'errors')}">
                        <g:textField name="annee" value="${fieldValue(bean: experimentationInstance, field: 'annee')}"/>
                    </td>
                </tr>
                </tbody>
            </table>
        </div>

        <div class="buttons">
            <span class="button"><g:submitButton name="create" class="save"
                                                 value="${message(code: 'default.button.create.label', default: 'Create')}"/></span>
        </div>
    </g:form>
</div>
</body>
</html>
