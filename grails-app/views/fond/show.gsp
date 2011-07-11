<%@ page import="com.cv.Fond" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'fond.label', default: 'Fond')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>
<a href="#show-fond" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                           default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]"/></g:link></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label"
                                                              args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="show-fond" class="content scaffold-show" role="main">
    <h1><g:message code="default.show.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <ol class="property-list fond">

        <g:if test="${fondInstance?.abreviation}">
            <li class="fieldcontain">
                <span id="abreviation-label" class="property-label"><g:message code="fond.abreviation.label"
                                                                               default="Abreviation"/></span>

                <span class="property-value" aria-labelledby="abreviation-label"><g:fieldValue bean="${fondInstance}"
                                                                                               field="abreviation"/></span>

            </li>
        </g:if>

        <g:if test="${fondInstance?.commentairePartA}">
            <li class="fieldcontain">
                <span id="commentairePartA-label" class="property-label"><g:message code="fond.commentairePartA.label"
                                                                                    default="Commentaire Part A"/></span>

                <span class="property-value" aria-labelledby="commentairePartA-label"><g:fieldValue
                        bean="${fondInstance}" field="commentairePartA"/></span>

            </li>
        </g:if>

        <g:if test="${fondInstance?.commentairePartB}">
            <li class="fieldcontain">
                <span id="commentairePartB-label" class="property-label"><g:message code="fond.commentairePartB.label"
                                                                                    default="Commentaire Part B"/></span>

                <span class="property-value" aria-labelledby="commentairePartB-label"><g:fieldValue
                        bean="${fondInstance}" field="commentairePartB"/></span>

            </li>
        </g:if>

        <g:if test="${fondInstance?.dateCreation}">
            <li class="fieldcontain">
                <span id="dateCreation-label" class="property-label"><g:message code="fond.dateCreation.label"
                                                                                default="Date Creation"/></span>

                <span class="property-value" aria-labelledby="dateCreation-label"><g:formatDate
                        date="${fondInstance?.dateCreation}"/></span>

            </li>
        </g:if>

        <g:if test="${fondInstance?.devise}">
            <li class="fieldcontain">
                <span id="devise-label" class="property-label"><g:message code="fond.devise.label"
                                                                          default="Devise"/></span>

                <span class="property-value" aria-labelledby="devise-label"><g:fieldValue bean="${fondInstance}"
                                                                                          field="devise"/></span>

            </li>
        </g:if>

        <g:if test="${fondInstance?.formeJuridique}">
            <li class="fieldcontain">
                <span id="formeJuridique-label" class="property-label"><g:message code="fond.formeJuridique.label"
                                                                                  default="Forme Juridique"/></span>

                <span class="property-value" aria-labelledby="formeJuridique-label"><g:fieldValue bean="${fondInstance}"
                                                                                                  field="formeJuridique"/></span>

            </li>
        </g:if>

        <g:if test="${fondInstance?.isinPartA}">
            <li class="fieldcontain">
                <span id="isinPartA-label" class="property-label"><g:message code="fond.isinPartA.label"
                                                                             default="Isin Part A"/></span>

                <span class="property-value" aria-labelledby="isinPartA-label"><g:fieldValue bean="${fondInstance}"
                                                                                             field="isinPartA"/></span>

            </li>
        </g:if>

        <g:if test="${fondInstance?.isinPartB}">
            <li class="fieldcontain">
                <span id="isinPartB-label" class="property-label"><g:message code="fond.isinPartB.label"
                                                                             default="Isin Part B"/></span>

                <span class="property-value" aria-labelledby="isinPartB-label"><g:fieldValue bean="${fondInstance}"
                                                                                             field="isinPartB"/></span>

            </li>
        </g:if>

        <g:if test="${fondInstance?.modeDeReglement}">
            <li class="fieldcontain">
                <span id="modeDeReglement-label" class="property-label"><g:message code="fond.modeDeReglement.label"
                                                                                   default="Mode De Reglement"/></span>

                <span class="property-value" aria-labelledby="modeDeReglement-label"><g:fieldValue
                        bean="${fondInstance}" field="modeDeReglement"/></span>

            </li>
        </g:if>

        <g:if test="${fondInstance?.modeGestion}">
            <li class="fieldcontain">
                <span id="modeGestion-label" class="property-label"><g:message code="fond.modeGestion.label"
                                                                               default="Mode Gestion"/></span>

                <span class="property-value" aria-labelledby="modeGestion-label"><g:fieldValue bean="${fondInstance}"
                                                                                               field="modeGestion"/></span>

            </li>
        </g:if>

        <g:if test="${fondInstance?.nominalPartA}">
            <li class="fieldcontain">
                <span id="nominalPartA-label" class="property-label"><g:message code="fond.nominalPartA.label"
                                                                                default="Nominal Part A"/></span>

                <span class="property-value" aria-labelledby="nominalPartA-label"><g:fieldValue bean="${fondInstance}"
                                                                                                field="nominalPartA"/></span>

            </li>
        </g:if>

        <g:if test="${fondInstance?.nominalPartB}">
            <li class="fieldcontain">
                <span id="nominalPartB-label" class="property-label"><g:message code="fond.nominalPartB.label"
                                                                                default="Nominal Part B"/></span>

                <span class="property-value" aria-labelledby="nominalPartB-label"><g:fieldValue bean="${fondInstance}"
                                                                                                field="nominalPartB"/></span>

            </li>
        </g:if>

        <g:if test="${fondInstance?.raisonSociale}">
            <li class="fieldcontain">
                <span id="raisonSociale-label" class="property-label"><g:message code="fond.raisonSociale.label"
                                                                                 default="Raison Sociale"/></span>

                <span class="property-value" aria-labelledby="raisonSociale-label"><g:fieldValue bean="${fondInstance}"
                                                                                                 field="raisonSociale"/></span>

            </li>
        </g:if>

        <g:if test="${fondInstance?.responsable}">
            <li class="fieldcontain">
                <span id="responsable-label" class="property-label"><g:message code="fond.responsable.label"
                                                                               default="Responsable"/></span>

                <span class="property-value" aria-labelledby="responsable-label"><g:link controller="contact"
                                                                                         action="show"
                                                                                         id="${fondInstance?.responsable?.id}">${fondInstance?.responsable?.encodeAsHTML()}</g:link></span>

            </li>
        </g:if>

        <g:if test="${fondInstance?.responsableDossier}">
            <li class="fieldcontain">
                <span id="responsableDossier-label" class="property-label"><g:message
                        code="fond.responsableDossier.label" default="Responsable Dossier"/></span>

                <span class="property-value" aria-labelledby="responsableDossier-label"><g:link controller="contact"
                                                                                                action="show"
                                                                                                id="${fondInstance?.responsableDossier?.id}">${fondInstance?.responsableDossier?.encodeAsHTML()}</g:link></span>

            </li>
        </g:if>

        <g:if test="${fondInstance?.role}">
            <li class="fieldcontain">
                <span id="role-label" class="property-label"><g:message code="fond.role.label" default="Role"/></span>

                <span class="property-value" aria-labelledby="role-label"><g:fieldValue bean="${fondInstance}"
                                                                                        field="role"/></span>

            </li>
        </g:if>

        <g:if test="${fondInstance?.societeGestion}">
            <li class="fieldcontain">
                <span id="societeGestion-label" class="property-label"><g:message code="fond.societeGestion.label"
                                                                                  default="Societe Gestion"/></span>

                <span class="property-value" aria-labelledby="societeGestion-label"><g:fieldValue bean="${fondInstance}"
                                                                                                  field="societeGestion"/></span>

            </li>
        </g:if>

    </ol>
    <g:form>
        <fieldset class="buttons">
            <g:hiddenField name="id" value="${fondInstance?.id}"/>
            <g:link class="edit" action="edit" id="${fondInstance?.id}"><g:message code="default.button.edit.label"
                                                                                   default="Edit"/></g:link>
            <g:actionSubmit class="delete" action="delete"
                            value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                            onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
        </fieldset>
    </g:form>
</div>
</body>
</html>
