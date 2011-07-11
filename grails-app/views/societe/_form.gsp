<%@ page import="com.cv.Societe" %>



<div class="fieldcontain ${hasErrors(bean: societeInstance, field: 'abreviation', 'error')} ">
	<label for="abreviation">
		<g:message code="societe.abreviation.label" default="Abreviation" />
		
	</label>
	<g:textField name="abreviation" value="${societeInstance?.abreviation}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: societeInstance, field: 'activitesDetailleesEn', 'error')} ">
	<label for="activitesDetailleesEn">
		<g:message code="societe.activitesDetailleesEn.label" default="Activites Detaillees En" />
		
	</label>
	<g:textField name="activitesDetailleesEn" value="${societeInstance?.activitesDetailleesEn}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: societeInstance, field: 'activitesDetailleesFr', 'error')} ">
	<label for="activitesDetailleesFr">
		<g:message code="societe.activitesDetailleesFr.label" default="Activites Detaillees Fr" />
		
	</label>
	<g:textField name="activitesDetailleesFr" value="${societeInstance?.activitesDetailleesFr}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: societeInstance, field: 'arreteDesComptes', 'error')} ">
	<label for="arreteDesComptes">
		<g:message code="societe.arreteDesComptes.label" default="Arrete Des Comptes" />
		
	</label>
	<g:textField name="arreteDesComptes" value="${societeInstance?.arreteDesComptes}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: societeInstance, field: 'ca', 'error')} required">
	<label for="ca">
		<g:message code="societe.ca.label" default="Ca" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="ca" required="" value="${fieldValue(bean: societeInstance, field: 'ca')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: societeInstance, field: 'codeApe', 'error')} required">
	<label for="codeApe">
		<g:message code="societe.codeApe.label" default="Code Ape" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="codeApe" required="" value="${fieldValue(bean: societeInstance, field: 'codeApe')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: societeInstance, field: 'commentaire', 'error')} ">
	<label for="commentaire">
		<g:message code="societe.commentaire.label" default="Commentaire" />
		
	</label>
	<g:textField name="commentaire" value="${societeInstance?.commentaire}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: societeInstance, field: 'commentaires', 'error')} ">
	<label for="commentaires">
		<g:message code="societe.commentaires.label" default="Commentaires" />
		
	</label>
	<g:textField name="commentaires" value="${societeInstance?.commentaires}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: societeInstance, field: 'creation', 'error')} required">
	<label for="creation">
		<g:message code="societe.creation.label" default="Creation" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="creation" precision="day" value="${societeInstance?.creation}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: societeInstance, field: 'dateEntree', 'error')} required">
	<label for="dateEntree">
		<g:message code="societe.dateEntree.label" default="Date Entree" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dateEntree" precision="day" value="${societeInstance?.dateEntree}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: societeInstance, field: 'dateReference', 'error')} required">
	<label for="dateReference">
		<g:message code="societe.dateReference.label" default="Date Reference" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dateReference" precision="day" value="${societeInstance?.dateReference}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: societeInstance, field: 'dateSortie', 'error')} required">
	<label for="dateSortie">
		<g:message code="societe.dateSortie.label" default="Date Sortie" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dateSortie" precision="day" value="${societeInstance?.dateSortie}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: societeInstance, field: 'devise', 'error')} ">
	<label for="devise">
		<g:message code="societe.devise.label" default="Devise" />
		
	</label>
	<g:textField name="devise" value="${societeInstance?.devise}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: societeInstance, field: 'effectif', 'error')} required">
	<label for="effectif">
		<g:message code="societe.effectif.label" default="Effectif" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="effectif" required="" value="${fieldValue(bean: societeInstance, field: 'effectif')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: societeInstance, field: 'engagement', 'error')} required">
	<label for="engagement">
		<g:message code="societe.engagement.label" default="Engagement" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="engagement" required="" value="${fieldValue(bean: societeInstance, field: 'engagement')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: societeInstance, field: 'formeJuridique', 'error')} ">
	<label for="formeJuridique">
		<g:message code="societe.formeJuridique.label" default="Forme Juridique" />
		
	</label>
	<g:textField name="formeJuridique" value="${societeInstance?.formeJuridique}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: societeInstance, field: 'holdingBuyout', 'error')} ">
	<label for="holdingBuyout">
		<g:message code="societe.holdingBuyout.label" default="Holding Buyout" />
		
	</label>
	<g:checkBox name="holdingBuyout" value="${societeInstance?.holdingBuyout}" />
</div>

<div class="fieldcontain ${hasErrors(bean: societeInstance, field: 'imatriculationKBIS', 'error')} required">
	<label for="imatriculationKBIS">
		<g:message code="societe.imatriculationKBIS.label" default="Imatriculation KBIS" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="imatriculationKBIS" precision="day" value="${societeInstance?.imatriculationKBIS}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: societeInstance, field: 'modeDeSortie', 'error')} ">
	<label for="modeDeSortie">
		<g:message code="societe.modeDeSortie.label" default="Mode De Sortie" />
		
	</label>
	<g:textField name="modeDeSortie" value="${societeInstance?.modeDeSortie}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: societeInstance, field: 'natureInvestissement', 'error')} ">
	<label for="natureInvestissement">
		<g:message code="societe.natureInvestissement.label" default="Nature Investissement" />
		
	</label>
	<g:textField name="natureInvestissement" value="${societeInstance?.natureInvestissement}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: societeInstance, field: 'nomResponsable', 'error')} ">
	<label for="nomResponsable">
		<g:message code="societe.nomResponsable.label" default="Nom Responsable" />
		
	</label>
	<g:textField name="nomResponsable" value="${societeInstance?.nomResponsable}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: societeInstance, field: 'nomSGP', 'error')} ">
	<label for="nomSGP">
		<g:message code="societe.nomSGP.label" default="Nom SGP" />
		
	</label>
	<g:textField name="nomSGP" value="${societeInstance?.nomSGP}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: societeInstance, field: 'participationActive', 'error')} required">
	<label for="participationActive">
		<g:message code="societe.participationActive.label" default="Participation Active" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="participationActive" precision="day" value="${societeInstance?.participationActive}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: societeInstance, field: 'pays', 'error')} ">
	<label for="pays">
		<g:message code="societe.pays.label" default="Pays" />
		
	</label>
	<g:textField name="pays" value="${societeInstance?.pays}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: societeInstance, field: 'pole', 'error')} ">
	<label for="pole">
		<g:message code="societe.pole.label" default="Pole" />
		
	</label>
	<g:textField name="pole" value="${societeInstance?.pole}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: societeInstance, field: 'raisonSociale', 'error')} ">
	<label for="raisonSociale">
		<g:message code="societe.raisonSociale.label" default="Raison Sociale" />
		
	</label>
	<g:textField name="raisonSociale" value="${societeInstance?.raisonSociale}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: societeInstance, field: 'region', 'error')} ">
	<label for="region">
		<g:message code="societe.region.label" default="Region" />
		
	</label>
	<g:textField name="region" value="${societeInstance?.region}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: societeInstance, field: 'resultatEntree', 'error')} required">
	<label for="resultatEntree">
		<g:message code="societe.resultatEntree.label" default="Resultat Entree" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="resultatEntree" required="" value="${fieldValue(bean: societeInstance, field: 'resultatEntree')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: societeInstance, field: 'resultatValo', 'error')} required">
	<label for="resultatValo">
		<g:message code="societe.resultatValo.label" default="Resultat Valo" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="resultatValo" required="" value="${fieldValue(bean: societeInstance, field: 'resultatValo')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: societeInstance, field: 'secteurActivite', 'error')} ">
	<label for="secteurActivite">
		<g:message code="societe.secteurActivite.label" default="Secteur Activite" />
		
	</label>
	<g:textField name="secteurActivite" value="${societeInstance?.secteurActivite}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: societeInstance, field: 'societeCotee', 'error')} ">
	<label for="societeCotee">
		<g:message code="societe.societeCotee.label" default="Societe Cotee" />
		
	</label>
	<g:checkBox name="societeCotee" value="${societeInstance?.societeCotee}" />
</div>

