
<%@ page import="com.cv.Societe" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'societe.label', default: 'Societe')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-societe" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-societe" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list societe">
			
				<g:if test="${societeInstance?.abreviation}">
				<li class="fieldcontain">
					<span id="abreviation-label" class="property-label"><g:message code="societe.abreviation.label" default="Abreviation" /></span>
					
						<span class="property-value" aria-labelledby="abreviation-label"><g:fieldValue bean="${societeInstance}" field="abreviation"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${societeInstance?.activitesDetailleesEn}">
				<li class="fieldcontain">
					<span id="activitesDetailleesEn-label" class="property-label"><g:message code="societe.activitesDetailleesEn.label" default="Activites Detaillees En" /></span>
					
						<span class="property-value" aria-labelledby="activitesDetailleesEn-label"><g:fieldValue bean="${societeInstance}" field="activitesDetailleesEn"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${societeInstance?.activitesDetailleesFr}">
				<li class="fieldcontain">
					<span id="activitesDetailleesFr-label" class="property-label"><g:message code="societe.activitesDetailleesFr.label" default="Activites Detaillees Fr" /></span>
					
						<span class="property-value" aria-labelledby="activitesDetailleesFr-label"><g:fieldValue bean="${societeInstance}" field="activitesDetailleesFr"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${societeInstance?.arreteDesComptes}">
				<li class="fieldcontain">
					<span id="arreteDesComptes-label" class="property-label"><g:message code="societe.arreteDesComptes.label" default="Arrete Des Comptes" /></span>
					
						<span class="property-value" aria-labelledby="arreteDesComptes-label"><g:fieldValue bean="${societeInstance}" field="arreteDesComptes"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${societeInstance?.ca}">
				<li class="fieldcontain">
					<span id="ca-label" class="property-label"><g:message code="societe.ca.label" default="Ca" /></span>
					
						<span class="property-value" aria-labelledby="ca-label"><g:fieldValue bean="${societeInstance}" field="ca"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${societeInstance?.codeApe}">
				<li class="fieldcontain">
					<span id="codeApe-label" class="property-label"><g:message code="societe.codeApe.label" default="Code Ape" /></span>
					
						<span class="property-value" aria-labelledby="codeApe-label"><g:fieldValue bean="${societeInstance}" field="codeApe"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${societeInstance?.commentaire}">
				<li class="fieldcontain">
					<span id="commentaire-label" class="property-label"><g:message code="societe.commentaire.label" default="Commentaire" /></span>
					
						<span class="property-value" aria-labelledby="commentaire-label"><g:fieldValue bean="${societeInstance}" field="commentaire"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${societeInstance?.commentaires}">
				<li class="fieldcontain">
					<span id="commentaires-label" class="property-label"><g:message code="societe.commentaires.label" default="Commentaires" /></span>
					
						<span class="property-value" aria-labelledby="commentaires-label"><g:fieldValue bean="${societeInstance}" field="commentaires"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${societeInstance?.creation}">
				<li class="fieldcontain">
					<span id="creation-label" class="property-label"><g:message code="societe.creation.label" default="Creation" /></span>
					
						<span class="property-value" aria-labelledby="creation-label"><g:formatDate date="${societeInstance?.creation}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${societeInstance?.dateEntree}">
				<li class="fieldcontain">
					<span id="dateEntree-label" class="property-label"><g:message code="societe.dateEntree.label" default="Date Entree" /></span>
					
						<span class="property-value" aria-labelledby="dateEntree-label"><g:formatDate date="${societeInstance?.dateEntree}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${societeInstance?.dateReference}">
				<li class="fieldcontain">
					<span id="dateReference-label" class="property-label"><g:message code="societe.dateReference.label" default="Date Reference" /></span>
					
						<span class="property-value" aria-labelledby="dateReference-label"><g:formatDate date="${societeInstance?.dateReference}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${societeInstance?.dateSortie}">
				<li class="fieldcontain">
					<span id="dateSortie-label" class="property-label"><g:message code="societe.dateSortie.label" default="Date Sortie" /></span>
					
						<span class="property-value" aria-labelledby="dateSortie-label"><g:formatDate date="${societeInstance?.dateSortie}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${societeInstance?.devise}">
				<li class="fieldcontain">
					<span id="devise-label" class="property-label"><g:message code="societe.devise.label" default="Devise" /></span>
					
						<span class="property-value" aria-labelledby="devise-label"><g:fieldValue bean="${societeInstance}" field="devise"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${societeInstance?.effectif}">
				<li class="fieldcontain">
					<span id="effectif-label" class="property-label"><g:message code="societe.effectif.label" default="Effectif" /></span>
					
						<span class="property-value" aria-labelledby="effectif-label"><g:fieldValue bean="${societeInstance}" field="effectif"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${societeInstance?.engagement}">
				<li class="fieldcontain">
					<span id="engagement-label" class="property-label"><g:message code="societe.engagement.label" default="Engagement" /></span>
					
						<span class="property-value" aria-labelledby="engagement-label"><g:fieldValue bean="${societeInstance}" field="engagement"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${societeInstance?.formeJuridique}">
				<li class="fieldcontain">
					<span id="formeJuridique-label" class="property-label"><g:message code="societe.formeJuridique.label" default="Forme Juridique" /></span>
					
						<span class="property-value" aria-labelledby="formeJuridique-label"><g:fieldValue bean="${societeInstance}" field="formeJuridique"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${societeInstance?.holdingBuyout}">
				<li class="fieldcontain">
					<span id="holdingBuyout-label" class="property-label"><g:message code="societe.holdingBuyout.label" default="Holding Buyout" /></span>
					
						<span class="property-value" aria-labelledby="holdingBuyout-label"><g:formatBoolean boolean="${societeInstance?.holdingBuyout}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${societeInstance?.imatriculationKBIS}">
				<li class="fieldcontain">
					<span id="imatriculationKBIS-label" class="property-label"><g:message code="societe.imatriculationKBIS.label" default="Imatriculation KBIS" /></span>
					
						<span class="property-value" aria-labelledby="imatriculationKBIS-label"><g:formatDate date="${societeInstance?.imatriculationKBIS}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${societeInstance?.modeDeSortie}">
				<li class="fieldcontain">
					<span id="modeDeSortie-label" class="property-label"><g:message code="societe.modeDeSortie.label" default="Mode De Sortie" /></span>
					
						<span class="property-value" aria-labelledby="modeDeSortie-label"><g:fieldValue bean="${societeInstance}" field="modeDeSortie"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${societeInstance?.natureInvestissement}">
				<li class="fieldcontain">
					<span id="natureInvestissement-label" class="property-label"><g:message code="societe.natureInvestissement.label" default="Nature Investissement" /></span>
					
						<span class="property-value" aria-labelledby="natureInvestissement-label"><g:fieldValue bean="${societeInstance}" field="natureInvestissement"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${societeInstance?.nomResponsable}">
				<li class="fieldcontain">
					<span id="nomResponsable-label" class="property-label"><g:message code="societe.nomResponsable.label" default="Nom Responsable" /></span>
					
						<span class="property-value" aria-labelledby="nomResponsable-label"><g:fieldValue bean="${societeInstance}" field="nomResponsable"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${societeInstance?.nomSGP}">
				<li class="fieldcontain">
					<span id="nomSGP-label" class="property-label"><g:message code="societe.nomSGP.label" default="Nom SGP" /></span>
					
						<span class="property-value" aria-labelledby="nomSGP-label"><g:fieldValue bean="${societeInstance}" field="nomSGP"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${societeInstance?.participationActive}">
				<li class="fieldcontain">
					<span id="participationActive-label" class="property-label"><g:message code="societe.participationActive.label" default="Participation Active" /></span>
					
						<span class="property-value" aria-labelledby="participationActive-label"><g:formatDate date="${societeInstance?.participationActive}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${societeInstance?.pays}">
				<li class="fieldcontain">
					<span id="pays-label" class="property-label"><g:message code="societe.pays.label" default="Pays" /></span>
					
						<span class="property-value" aria-labelledby="pays-label"><g:fieldValue bean="${societeInstance}" field="pays"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${societeInstance?.pole}">
				<li class="fieldcontain">
					<span id="pole-label" class="property-label"><g:message code="societe.pole.label" default="Pole" /></span>
					
						<span class="property-value" aria-labelledby="pole-label"><g:fieldValue bean="${societeInstance}" field="pole"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${societeInstance?.raisonSociale}">
				<li class="fieldcontain">
					<span id="raisonSociale-label" class="property-label"><g:message code="societe.raisonSociale.label" default="Raison Sociale" /></span>
					
						<span class="property-value" aria-labelledby="raisonSociale-label"><g:fieldValue bean="${societeInstance}" field="raisonSociale"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${societeInstance?.region}">
				<li class="fieldcontain">
					<span id="region-label" class="property-label"><g:message code="societe.region.label" default="Region" /></span>
					
						<span class="property-value" aria-labelledby="region-label"><g:fieldValue bean="${societeInstance}" field="region"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${societeInstance?.resultatEntree}">
				<li class="fieldcontain">
					<span id="resultatEntree-label" class="property-label"><g:message code="societe.resultatEntree.label" default="Resultat Entree" /></span>
					
						<span class="property-value" aria-labelledby="resultatEntree-label"><g:fieldValue bean="${societeInstance}" field="resultatEntree"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${societeInstance?.resultatValo}">
				<li class="fieldcontain">
					<span id="resultatValo-label" class="property-label"><g:message code="societe.resultatValo.label" default="Resultat Valo" /></span>
					
						<span class="property-value" aria-labelledby="resultatValo-label"><g:fieldValue bean="${societeInstance}" field="resultatValo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${societeInstance?.secteurActivite}">
				<li class="fieldcontain">
					<span id="secteurActivite-label" class="property-label"><g:message code="societe.secteurActivite.label" default="Secteur Activite" /></span>
					
						<span class="property-value" aria-labelledby="secteurActivite-label"><g:fieldValue bean="${societeInstance}" field="secteurActivite"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${societeInstance?.societeCotee}">
				<li class="fieldcontain">
					<span id="societeCotee-label" class="property-label"><g:message code="societe.societeCotee.label" default="Societe Cotee" /></span>
					
						<span class="property-value" aria-labelledby="societeCotee-label"><g:formatBoolean boolean="${societeInstance?.societeCotee}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${societeInstance?.id}" />
					<g:link class="edit" action="edit" id="${societeInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
