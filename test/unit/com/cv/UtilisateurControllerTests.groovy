package com.cv



import org.junit.*
import grails.test.mixin.*


@TestFor(UtilisateurController)
@Mock(Utilisateur)
class UtilisateurControllerTests {


    @Test
    void testIndex() {
        controller.index()
        assert "/utilisateur/list" == response.redirectedUrl
    }

    @Test
    void testList() {

        def model = controller.list()

        assert model.utilisateurInstanceList.size() == 0
        assert model.utilisateurInstanceTotal == 0

    }

    @Test
    void testCreate() {
        def model = controller.create()

        assert model.utilisateurInstance != null


    }

    @Test
    void testSave() {
        controller.save()

        assert model.utilisateurInstance != null
        assert view == '/utilisateur/create'

        // TODO: Populate valid properties

        controller.save()

        assert response.redirectedUrl == '/utilisateur/show/1'
        assert controller.flash.message != null
        assert Utilisateur.count() == 1
    }


    @Test
    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/utilisateur/list'


        def utilisateur = new Utilisateur()

        // TODO: populate domain properties

        assert utilisateur.save() != null

        params.id = utilisateur.id

        def model = controller.show()

        assert model.utilisateurInstance == utilisateur
    }

    @Test
    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/utilisateur/list'


        def utilisateur = new Utilisateur()

        // TODO: populate valid domain properties

        assert utilisateur.save() != null

        params.id = utilisateur.id

        def model = controller.edit()

        assert model.utilisateurInstance == utilisateur
    }

    @Test
    void testUpdate() {

        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/utilisateur/list'

        response.reset()


        def utilisateur = new Utilisateur()

        // TODO: populate valid domain properties

        assert utilisateur.save() != null

        // test invalid parameters in update
        params.id = utilisateur.id

        controller.update()

        assert view == "/utilisateur/edit"
        assert model.utilisateurInstance != null

        utilisateur.clearErrors()

        // TODO: populate valid domain form parameter
        controller.update()

        assert response.redirectedUrl == "/utilisateur/show/$utilisateur.id"
        assert flash.message != null
    }

    @Test
    void testDelete() {
        controller.delete()

        assert flash.message != null
        assert response.redirectedUrl == '/utilisateur/list'

        response.reset()

        def utilisateur = new Utilisateur()

        // TODO: populate valid domain properties
        assert utilisateur.save() != null
        assert Utilisateur.count() == 1

        params.id = utilisateur.id

        controller.delete()

        assert Utilisateur.count() == 0
        assert Utilisateur.get(utilisateur.id) == null
        assert response.redirectedUrl == '/utilisateur/list'


    }


}