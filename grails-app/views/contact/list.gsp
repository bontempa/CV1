<%@ page import="com.cv.Contact" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'contact.label', default: 'Contact')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<a href="#list-contact" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                              default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label"
                                                              args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="list-contact" class="content scaffold-list" role="main">
    <h1><g:message code="default.list.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <table>
        <thead>
        <tr>

            <g:sortableColumn property="adresse" title="${message(code: 'contact.adresse.label', default: 'Adresse')}"/>

            <g:sortableColumn property="cedex" title="${message(code: 'contact.cedex.label', default: 'Cedex')}"/>

            <g:sortableColumn property="civilite"
                              title="${message(code: 'contact.civilite.label', default: 'Civilite')}"/>

            <g:sortableColumn property="codepostal"
                              title="${message(code: 'contact.codepostal.label', default: 'Codepostal')}"/>

            <g:sortableColumn property="commentaire"
                              title="${message(code: 'contact.commentaire.label', default: 'Commentaire')}"/>

            <g:sortableColumn property="contact" title="${message(code: 'contact.contact.label', default: 'Contact')}"/>

        </tr>
        </thead>
        <tbody>
        <g:each in="${contactInstanceList}" status="i" var="contactInstance">
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                <td><g:link action="show"
                            id="${contactInstance.id}">${fieldValue(bean: contactInstance, field: "adresse")}</g:link></td>

                <td>${fieldValue(bean: contactInstance, field: "cedex")}</td>

                <td>${fieldValue(bean: contactInstance, field: "civilite")}</td>

                <td>${fieldValue(bean: contactInstance, field: "codepostal")}</td>

                <td>${fieldValue(bean: contactInstance, field: "commentaire")}</td>

                <td>${fieldValue(bean: contactInstance, field: "contact")}</td>

            </tr>
        </g:each>
        </tbody>
    </table>

    <div class="pagination">
        <g:paginate total="${contactInstanceTotal}"/>
    </div>
</div>
</body>
</html>
