<%@ page import="com.cv.Contact" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'contact.label', default: 'Contact')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>
<a href="#show-contact" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                              default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]"/></g:link></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label"
                                                              args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="show-contact" class="content scaffold-show" role="main">
<h1><g:message code="default.show.label" args="[entityName]"/></h1>
<g:if test="${flash.message}">
    <div class="message" role="status">${flash.message}</div>
</g:if>
<ol class="property-list contact">

    <g:if test="${contactInstance?.adresse}">
        <li class="fieldcontain">
            <span id="adresse-label" class="property-label"><g:message code="contact.adresse.label"
                                                                       default="Adresse"/></span>

            <span class="property-value" aria-labelledby="adresse-label"><g:fieldValue bean="${contactInstance}"
                                                                                       field="adresse"/></span>

        </li>
    </g:if>

    <g:if test="${contactInstance?.cedex}">
        <li class="fieldcontain">
            <span id="cedex-label" class="property-label"><g:message code="contact.cedex.label" default="Cedex"/></span>

            <span class="property-value" aria-labelledby="cedex-label"><g:fieldValue bean="${contactInstance}"
                                                                                     field="cedex"/></span>

        </li>
    </g:if>

    <g:if test="${contactInstance?.civilite}">
        <li class="fieldcontain">
            <span id="civilite-label" class="property-label"><g:message code="contact.civilite.label"
                                                                        default="Civilite"/></span>

            <span class="property-value" aria-labelledby="civilite-label"><g:fieldValue bean="${contactInstance}"
                                                                                        field="civilite"/></span>

        </li>
    </g:if>

    <g:if test="${contactInstance?.codepostal}">
        <li class="fieldcontain">
            <span id="codepostal-label" class="property-label"><g:message code="contact.codepostal.label"
                                                                          default="Codepostal"/></span>

            <span class="property-value" aria-labelledby="codepostal-label"><g:fieldValue bean="${contactInstance}"
                                                                                          field="codepostal"/></span>

        </li>
    </g:if>

    <g:if test="${contactInstance?.commentaire}">
        <li class="fieldcontain">
            <span id="commentaire-label" class="property-label"><g:message code="contact.commentaire.label"
                                                                           default="Commentaire"/></span>

            <span class="property-value" aria-labelledby="commentaire-label"><g:fieldValue bean="${contactInstance}"
                                                                                           field="commentaire"/></span>

        </li>
    </g:if>

    <g:if test="${contactInstance?.contact}">
        <li class="fieldcontain">
            <span id="contact-label" class="property-label"><g:message code="contact.contact.label"
                                                                       default="Contact"/></span>

            <span class="property-value" aria-labelledby="contact-label"><g:fieldValue bean="${contactInstance}"
                                                                                       field="contact"/></span>

        </li>
    </g:if>

    <g:if test="${contactInstance?.description}">
        <li class="fieldcontain">
            <span id="description-label" class="property-label"><g:message code="contact.description.label"
                                                                           default="Description"/></span>

            <span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${contactInstance}"
                                                                                           field="description"/></span>

        </li>
    </g:if>

    <g:if test="${contactInstance?.email}">
        <li class="fieldcontain">
            <span id="email-label" class="property-label"><g:message code="contact.email.label" default="Email"/></span>

            <span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${contactInstance}"
                                                                                     field="email"/></span>

        </li>
    </g:if>

    <g:if test="${contactInstance?.fax}">
        <li class="fieldcontain">
            <span id="fax-label" class="property-label"><g:message code="contact.fax.label" default="Fax"/></span>

            <span class="property-value" aria-labelledby="fax-label"><g:fieldValue bean="${contactInstance}"
                                                                                   field="fax"/></span>

        </li>
    </g:if>

    <g:if test="${contactInstance?.heure}">
        <li class="fieldcontain">
            <span id="heure-label" class="property-label"><g:message code="contact.heure.label" default="Heure"/></span>

            <span class="property-value" aria-labelledby="heure-label"><g:fieldValue bean="${contactInstance}"
                                                                                     field="heure"/></span>

        </li>
    </g:if>

    <g:if test="${contactInstance?.langue}">
        <li class="fieldcontain">
            <span id="langue-label" class="property-label"><g:message code="contact.langue.label"
                                                                      default="Langue"/></span>

            <span class="property-value" aria-labelledby="langue-label"><g:fieldValue bean="${contactInstance}"
                                                                                      field="langue"/></span>

        </li>
    </g:if>

    <g:if test="${contactInstance?.mobile}">
        <li class="fieldcontain">
            <span id="mobile-label" class="property-label"><g:message code="contact.mobile.label"
                                                                      default="Mobile"/></span>

            <span class="property-value" aria-labelledby="mobile-label"><g:fieldValue bean="${contactInstance}"
                                                                                      field="mobile"/></span>

        </li>
    </g:if>

    <g:if test="${contactInstance?.nationalite}">
        <li class="fieldcontain">
            <span id="nationalite-label" class="property-label"><g:message code="contact.nationalite.label"
                                                                           default="Nationalite"/></span>

            <span class="property-value" aria-labelledby="nationalite-label"><g:fieldValue bean="${contactInstance}"
                                                                                           field="nationalite"/></span>

        </li>
    </g:if>

    <g:if test="${contactInstance?.nom}">
        <li class="fieldcontain">
            <span id="nom-label" class="property-label"><g:message code="contact.nom.label" default="Nom"/></span>

            <span class="property-value" aria-labelledby="nom-label"><g:fieldValue bean="${contactInstance}"
                                                                                   field="nom"/></span>

        </li>
    </g:if>

    <g:if test="${contactInstance?.pays}">
        <li class="fieldcontain">
            <span id="pays-label" class="property-label"><g:message code="contact.pays.label" default="Pays"/></span>

            <span class="property-value" aria-labelledby="pays-label"><g:fieldValue bean="${contactInstance}"
                                                                                    field="pays"/></span>

        </li>
    </g:if>

    <g:if test="${contactInstance?.prenom}">
        <li class="fieldcontain">
            <span id="prenom-label" class="property-label"><g:message code="contact.prenom.label"
                                                                      default="Prenom"/></span>

            <span class="property-value" aria-labelledby="prenom-label"><g:fieldValue bean="${contactInstance}"
                                                                                      field="prenom"/></span>

        </li>
    </g:if>

    <g:if test="${contactInstance?.region}">
        <li class="fieldcontain">
            <span id="region-label" class="property-label"><g:message code="contact.region.label"
                                                                      default="Region"/></span>

            <span class="property-value" aria-labelledby="region-label"><g:fieldValue bean="${contactInstance}"
                                                                                      field="region"/></span>

        </li>
    </g:if>

    <g:if test="${contactInstance?.sexe}">
        <li class="fieldcontain">
            <span id="sexe-label" class="property-label"><g:message code="contact.sexe.label" default="Sexe"/></span>

            <span class="property-value" aria-labelledby="sexe-label"><g:fieldValue bean="${contactInstance}"
                                                                                    field="sexe"/></span>

        </li>
    </g:if>

    <g:if test="${contactInstance?.societeeAssociee}">
        <li class="fieldcontain">
            <span id="societeeAssociee-label" class="property-label"><g:message code="contact.societeeAssociee.label"
                                                                                default="Societee Associee"/></span>

            <span class="property-value" aria-labelledby="societeeAssociee-label"><g:fieldValue
                    bean="${contactInstance}" field="societeeAssociee"/></span>

        </li>
    </g:if>

    <g:if test="${contactInstance?.telephone}">
        <li class="fieldcontain">
            <span id="telephone-label" class="property-label"><g:message code="contact.telephone.label"
                                                                         default="Telephone"/></span>

            <span class="property-value" aria-labelledby="telephone-label"><g:fieldValue bean="${contactInstance}"
                                                                                         field="telephone"/></span>

        </li>
    </g:if>

    <g:if test="${contactInstance?.ville}">
        <li class="fieldcontain">
            <span id="ville-label" class="property-label"><g:message code="contact.ville.label" default="Ville"/></span>

            <span class="property-value" aria-labelledby="ville-label"><g:fieldValue bean="${contactInstance}"
                                                                                     field="ville"/></span>

        </li>
    </g:if>

</ol>
<g:form>
    <fieldset class="buttons">
        <g:hiddenField name="id" value="${contactInstance?.id}"/>
        <g:link class="edit" action="edit" id="${contactInstance?.id}"><g:message code="default.button.edit.label"
                                                                                  default="Edit"/></g:link>
        <g:actionSubmit class="delete" action="delete"
                        value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                        onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
    </fieldset>
</g:form>
</div>
</body>
</html>
