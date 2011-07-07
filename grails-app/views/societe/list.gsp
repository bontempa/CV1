<%@ page import="com.cv.Societe" %>
<!doctype html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'societe.label', default: 'Societe')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<a href="#list-societe" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                              default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label"
                                                              args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="list-societe" class="content scaffold-list" role="main">
    <h1><g:message code="default.list.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <table>
        <thead>
        <tr>

            <g:sortableColumn property="abreviation"
                              title="${message(code: 'societe.abreviation.label', default: 'Abreviation')}"/>

            <g:sortableColumn property="activitesDetailleesEn"
                              title="${message(code: 'societe.activitesDetailleesEn.label', default: 'Activites Detaillees En')}"/>

            <g:sortableColumn property="activitesDetailleesFr"
                              title="${message(code: 'societe.activitesDetailleesFr.label', default: 'Activites Detaillees Fr')}"/>

            <g:sortableColumn property="arreteDesComptes"
                              title="${message(code: 'societe.arreteDesComptes.label', default: 'Arrete Des Comptes')}"/>

            <g:sortableColumn property="ca" title="${message(code: 'societe.ca.label', default: 'Ca')}"/>

            <g:sortableColumn property="codeApe"
                              title="${message(code: 'societe.codeApe.label', default: 'Code Ape')}"/>

        </tr>
        </thead>
        <tbody>
        <g:each in="${societeInstanceList}" status="i" var="societeInstance">
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                <td><g:link action="show"
                            id="${societeInstance.id}">${fieldValue(bean: societeInstance, field: "abreviation")}</g:link></td>

                <td>${fieldValue(bean: societeInstance, field: "activitesDetailleesEn")}</td>

                <td>${fieldValue(bean: societeInstance, field: "activitesDetailleesFr")}</td>

                <td>${fieldValue(bean: societeInstance, field: "arreteDesComptes")}</td>

                <td>${fieldValue(bean: societeInstance, field: "ca")}</td>

                <td>${fieldValue(bean: societeInstance, field: "codeApe")}</td>

            </tr>
        </g:each>
        </tbody>
    </table>

    <div class="pagination">
        <g:paginate total="${societeInstanceTotal}"/>
    </div>
</div>
</body>
</html>
