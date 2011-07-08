<%@ page import="com.cv.Fond" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'fond.label', default: 'Fond')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<a href="#list-fond" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                           default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label"
                                                              args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="list-fond" class="content scaffold-list" role="main">
    <h1><g:message code="default.list.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <table>
        <thead>
        <tr>

            <g:sortableColumn property="abreviation"
                              title="${message(code: 'fond.abreviation.label', default: 'Abreviation')}"/>

            <g:sortableColumn property="commentairePartA"
                              title="${message(code: 'fond.commentairePartA.label', default: 'Commentaire Part A')}"/>

            <g:sortableColumn property="commentairePartB"
                              title="${message(code: 'fond.commentairePartB.label', default: 'Commentaire Part B')}"/>

            <g:sortableColumn property="dateCreation"
                              title="${message(code: 'fond.dateCreation.label', default: 'Date Creation')}"/>

            <g:sortableColumn property="devise" title="${message(code: 'fond.devise.label', default: 'Devise')}"/>

            <g:sortableColumn property="formeJuridique"
                              title="${message(code: 'fond.formeJuridique.label', default: 'Forme Juridique')}"/>

        </tr>
        </thead>
        <tbody>
        <g:each in="${fondInstanceList}" status="i" var="fondInstance">
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                <td><g:link action="show"
                            id="${fondInstance.id}">${fieldValue(bean: fondInstance, field: "abreviation")}</g:link></td>

                <td>${fieldValue(bean: fondInstance, field: "commentairePartA")}</td>

                <td>${fieldValue(bean: fondInstance, field: "commentairePartB")}</td>

                <td><g:formatDate date="${fondInstance.dateCreation}"/></td>

                <td>${fieldValue(bean: fondInstance, field: "devise")}</td>

                <td>${fieldValue(bean: fondInstance, field: "formeJuridique")}</td>

            </tr>
        </g:each>
        </tbody>
    </table>

    <div class="pagination">
        <g:paginate total="${fondInstanceTotal}"/>
    </div>
</div>
</body>
</html>
