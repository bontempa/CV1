<%@ page import="com.cv.Fond" %>



<div class="fieldcontain ${hasErrors(bean: fondInstance, field: 'abreviation', 'error')} ">
    <label for="abreviation">
        <g:message code="fond.abreviation.label" default="Abreviation"/>

    </label>
    <g:textField name="abreviation" value="${fondInstance?.abreviation}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: fondInstance, field: 'commentairePartA', 'error')} ">
    <label for="commentairePartA">
        <g:message code="fond.commentairePartA.label" default="Commentaire Part A"/>
     </label>
    <gui:richEditor name="commentairePartA" id="commentairePartA"  value="${fondInstance?.commentairePartA}" height='100px' width='400px'/>
</div>

<div class="fieldcontain ${hasErrors(bean: fondInstance, field: 'commentairePartB', 'error')} ">
    <label for="commentairePartB">
        <g:message code="fond.commentairePartB.label" default="Commentaire Part B"/>

    </label>
    <gui:richEditor name="commentairePartB" id="commentairePartB"  value="${fondInstance?.commentairePartB}" height='100px' width='400px'/>
</div>

<div class="fieldcontain ${hasErrors(bean: fondInstance, field: 'dateCreation', 'error')} required">
    <label for="dateCreation">
        <g:message code="fond.dateCreation.label" default="Date Creation"/>
        <span class="required-indicator">*</span>
    </label>
    <gui:datePicker id="dateCreation" value="${fondInstance?.dateCreation}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: fondInstance, field: 'devise', 'error')} ">
    <label for="devise">
        <g:message code="fond.devise.label" default="Devise"/>

    </label>
    <g:textField name="devise" value="${fondInstance?.devise}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: fondInstance, field: 'formeJuridique', 'error')} ">
    <label for="formeJuridique">
        <g:message code="fond.formeJuridique.label" default="Forme Juridique"/>

    </label>
    <g:textField name="formeJuridique" value="${fondInstance?.formeJuridique}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: fondInstance, field: 'isinPartA', 'error')} ">
    <label for="isinPartA">
        <g:message code="fond.isinPartA.label" default="Isin Part A"/>

    </label>
    <g:textField name="isinPartA" value="${fondInstance?.isinPartA}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: fondInstance, field: 'isinPartB', 'error')} ">
    <label for="isinPartB">
        <g:message code="fond.isinPartB.label" default="Isin Part B"/>

    </label>
    <g:textField name="isinPartB" value="${fondInstance?.isinPartB}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: fondInstance, field: 'modeDeReglement', 'error')} ">
    <label for="modeDeReglement">
        <g:message code="fond.modeDeReglement.label" default="Mode De Reglement"/>

    </label>
    <g:textField name="modeDeReglement" value="${fondInstance?.modeDeReglement}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: fondInstance, field: 'modeGestion', 'error')} ">
    <label for="modeGestion">
        <g:message code="fond.modeGestion.label" default="Mode Gestion"/>

    </label>
    <g:textField name="modeGestion" value="${fondInstance?.modeGestion}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: fondInstance, field: 'nominalPartA', 'error')} ">
    <label for="nominalPartA">
        <g:message code="fond.nominalPartA.label" default="Nominal Part A"/>

    </label>
    <g:textField name="nominalPartA" value="${fondInstance?.nominalPartA}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: fondInstance, field: 'nominalPartB', 'error')} ">
    <label for="nominalPartB">
        <g:message code="fond.nominalPartB.label" default="Nominal Part B"/>

    </label>
    <g:textField name="nominalPartB" value="${fondInstance?.nominalPartB}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: fondInstance, field: 'raisonSociale', 'error')} ">
    <label for="raisonSociale">
        <g:message code="fond.raisonSociale.label" default="Raison Sociale"/>

    </label>
    <g:textField name="raisonSociale" value="${fondInstance?.raisonSociale}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: fondInstance, field: 'responsable', 'error')} required">
    <label for="responsable">
        <g:message code="fond.responsable.label" default="Responsable"/>
        <span class="required-indicator">*</span>
    </label>
    <g:select id="responsable" name="responsable.id" from="${com.cv.Contact.list()}" optionKey="nom" required=""
              value="${fondInstance?.responsable?.id}" class="many-to-one" optionValue="nom"/>
</div>

<div class="fieldcontain ${hasErrors(bean: fondInstance, field: 'responsableDossier', 'error')} required">
    <label for="responsableDossier">
        <g:message code="fond.responsableDossier.label" default="Responsable Dossier"/>
        <span class="required-indicator">*</span>
    </label>
    <g:select id="responsableDossier" name="responsableDossier.id" from="${com.cv.Contact.list()}" optionKey="nom"
              required="" value="${fondInstance?.responsableDossier?.id}" class="many-to-one" optionValue="nom"/>
</div>

<div class="fieldcontain ${hasErrors(bean: fondInstance, field: 'role', 'error')} ">
    <label for="role">
        <g:message code="fond.role.label" default="Role"/>

    </label>
    <g:textField name="role" value="${fondInstance?.role}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: fondInstance, field: 'societeGestion', 'error')} ">
    <label for="societeGestion">
        <g:message code="fond.societeGestion.label" default="Societe Gestion"/>

    </label>
    <g:textField name="societeGestion" value="${fondInstance?.societeGestion}"/>
</div>

