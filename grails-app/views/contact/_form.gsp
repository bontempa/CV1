<%@ page import="com.cv.Contact" %>



<div class="fieldcontain ${hasErrors(bean: contactInstance, field: 'adresse', 'error')} ">
    <label for="adresse">
        <g:message code="contact.adresse.label" default="Adresse"/>

    </label>
    <g:textField name="adresse" value="${contactInstance?.adresse}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contactInstance, field: 'cedex', 'error')} ">
    <label for="cedex">
        <g:message code="contact.cedex.label" default="Cedex"/>

    </label>
    <g:textField name="cedex" value="${contactInstance?.cedex}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contactInstance, field: 'civilite', 'error')} ">
    <label for="civilite">
        <g:message code="contact.civilite.label" default="Civilite"/>

    </label>
    <g:textField name="civilite" value="${contactInstance?.civilite}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contactInstance, field: 'codepostal', 'error')} ">
    <label for="codepostal">
        <g:message code="contact.codepostal.label" default="Codepostal"/>

    </label>
    <g:textField name="codepostal" value="${contactInstance?.codepostal}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contactInstance, field: 'commentaire', 'error')} ">
    <label for="commentaire">
        <g:message code="contact.commentaire.label" default="Commentaire"/>

    </label>
    <g:textField name="commentaire" value="${contactInstance?.commentaire}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contactInstance, field: 'contact', 'error')} ">
    <label for="contact">
        <g:message code="contact.contact.label" default="Contact"/>

    </label>
    <g:textField name="contact" value="${contactInstance?.contact}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contactInstance, field: 'description', 'error')} ">
    <label for="description">
        <g:message code="contact.description.label" default="Description"/>

    </label>
    <g:textField name="description" value="${contactInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contactInstance, field: 'email', 'error')} ">
    <label for="email">
        <g:message code="contact.email.label" default="Email"/>

    </label>
    <g:textField name="email" value="${contactInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contactInstance, field: 'fax', 'error')} ">
    <label for="fax">
        <g:message code="contact.fax.label" default="Fax"/>

    </label>
    <g:textField name="fax" value="${contactInstance?.fax}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contactInstance, field: 'heure', 'error')} ">
    <label for="heure">
        <g:message code="contact.heure.label" default="Heure"/>

    </label>
    <g:textField name="heure" value="${contactInstance?.heure}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contactInstance, field: 'langue', 'error')} ">
    <label for="langue">
        <g:message code="contact.langue.label" default="Langue"/>

    </label>
    <g:textField name="langue" value="${contactInstance?.langue}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contactInstance, field: 'mobile', 'error')} ">
    <label for="mobile">
        <g:message code="contact.mobile.label" default="Mobile"/>

    </label>
    <g:textField name="mobile" value="${contactInstance?.mobile}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contactInstance, field: 'nationalite', 'error')} ">
    <label for="nationalite">
        <g:message code="contact.nationalite.label" default="Nationalite"/>

    </label>
    <g:textField name="nationalite" value="${contactInstance?.nationalite}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contactInstance, field: 'nom', 'error')} ">
    <label for="nom">
        <g:message code="contact.nom.label" default="Nom"/>

    </label>
    <g:textField name="nom" value="${contactInstance?.nom}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contactInstance, field: 'pays', 'error')} ">
    <label for="pays">
        <g:message code="contact.pays.label" default="Pays"/>

    </label>
    <g:textField name="pays" value="${contactInstance?.pays}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contactInstance, field: 'prenom', 'error')} ">
    <label for="prenom">
        <g:message code="contact.prenom.label" default="Prenom"/>

    </label>
    <g:textField name="prenom" value="${contactInstance?.prenom}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contactInstance, field: 'region', 'error')} ">
    <label for="region">
        <g:message code="contact.region.label" default="Region"/>

    </label>
    <g:textField name="region" value="${contactInstance?.region}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contactInstance, field: 'sexe', 'error')} ">
    <label for="sexe">
        <g:message code="contact.sexe.label" default="Sexe"/>

    </label>
    <g:textField name="sexe" value="${contactInstance?.sexe}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contactInstance, field: 'societeeAssociee', 'error')} ">
    <label for="societeeAssociee">
        <g:message code="contact.societeeAssociee.label" default="Societee Associee"/>

    </label>
    <g:textField name="societeeAssociee" value="${contactInstance?.societeeAssociee}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contactInstance, field: 'telephone', 'error')} ">
    <label for="telephone">
        <g:message code="contact.telephone.label" default="Telephone"/>

    </label>
    <g:textField name="telephone" value="${contactInstance?.telephone}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: contactInstance, field: 'ville', 'error')} ">
    <label for="ville">
        <g:message code="contact.ville.label" default="Ville"/>

    </label>
    <g:textField name="ville" value="${contactInstance?.ville}"/>
</div>

