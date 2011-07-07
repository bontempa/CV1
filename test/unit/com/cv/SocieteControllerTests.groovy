package com.cv



import org.junit.*
import grails.test.mixin.*


@TestFor(SocieteController)
@Mock(Societe)
class SocieteControllerTests {


    @Test
    void testIndex() {
        controller.index()
        assert "/societe/list" == response.redirectedUrl
    }

    @Test
    void testList() {

        def model = controller.list()

        assert model.societeInstanceList.size() == 0
        assert model.societeInstanceTotal == 0

    }

    @Test
    void testCreate() {
        def model = controller.create()

        assert model.societeInstance != null


    }

    @Test
    void testSave() {
        controller.save()

        assert model.societeInstance != null
        assert view == '/societe/create'

        // TODO: Populate valid properties

        controller.save()

        assert response.redirectedUrl == '/societe/show/1'
        assert controller.flash.message != null
        assert Societe.count() == 1
    }


    @Test
    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/societe/list'


        def societe = new Societe()

        // TODO: populate domain properties

        assert societe.save() != null

        params.id = societe.id

        def model = controller.show()

        assert model.societeInstance == societe
    }

    @Test
    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/societe/list'


        def societe = new Societe()

        // TODO: populate valid domain properties

        assert societe.save() != null

        params.id = societe.id

        def model = controller.edit()

        assert model.societeInstance == societe
    }

    @Test
    void testUpdate() {

        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/societe/list'

        response.reset()


        def societe = new Societe()

        // TODO: populate valid domain properties

        assert societe.save() != null

        // test invalid parameters in update
        params.id = societe.id

        controller.update()

        assert view == "/societe/edit"
        assert model.societeInstance != null

        societe.clearErrors()

        // TODO: populate valid domain form parameter
        controller.update()

        assert response.redirectedUrl == "/societe/show/$societe.id"
        assert flash.message != null
    }

    @Test
    void testDelete() {
        controller.delete()

        assert flash.message != null
        assert response.redirectedUrl == '/societe/list'

        response.reset()

        def societe = new Societe()

        // TODO: populate valid domain properties
        assert societe.save() != null
        assert Societe.count() == 1

        params.id = societe.id

        controller.delete()

        assert Societe.count() == 0
        assert Societe.get(societe.id) == null
        assert response.redirectedUrl == '/societe/list'


    }


}