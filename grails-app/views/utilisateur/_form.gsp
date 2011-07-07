<%@ page import="com.cv.Utilisateur" %>



<div class="fieldcontain ${hasErrors(bean: utilisateurInstance, field: 'nom', 'error')} required">
    <label for="nom">
        <g:message code="utilisateur.nom.label" default="Nom"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="nom" required="" value="${utilisateurInstance?.nom}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: utilisateurInstance, field: 'prenom', 'error')} required">
    <label for="prenom">
        <g:message code="utilisateur.prenom.label" default="Prenom"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="prenom" required="" value="${utilisateurInstance?.prenom}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: utilisateurInstance, field: 'pseudo', 'error')} required">
    <label for="pseudo">
        <g:message code="utilisateur.pseudo.label" default="Pseudo"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="pseudo" required="" value="${utilisateurInstance?.pseudo}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: utilisateurInstance, field: 'mdp', 'error')} required">
    <label for="mdp">
        <g:message code="utilisateur.mdp.label" default="Mdp"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="mdp" required="" value="${utilisateurInstance?.mdp}"/>
</div>

