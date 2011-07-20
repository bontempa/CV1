<%@ page import="com.cv.Experimentation" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<meta name="layout" content="ext"/>
<g:set var="entityName" value="${message(code: 'experimentation.label', default: 'Experimentation')}"/>
<title><g:message code="default.list.label" args="[entityName]"/></title>
<link rel="stylesheet" href="${resource(dir: 'css', file: 'main.css')}"/>
<link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon"/>
<g:javascript library="application"/>
<script type="text/javascript" src="http://www.google.com/jsapi"></script>
<g:javascript library="FiltersFeature"/>
<g:javascript library="Filter"/>
<g:javascript library="StringFilter"/>
<script type="text/javascript">
    Ext.onReady(function() {
        Ext.QuickTips.init();


        var store = Ext.create('Ext.data.TreeStore', {
            proxy: {
                type: 'ajax',
                url: 'maliste'
            },
            root: {
                text: 'Divers',
                id: 'src',
                expanded: true}
        });

        var tree = Ext.create('Ext.tree.Panel', {
            store: store,
            viewConfig: {
                plugins: {
                    ptype: 'treeviewdragdrop'
                }
            },
            renderTo: 'tree-div',
            height: 300,
            width: 250,
            title: 'Files',
            useArrows: true,
            dockedItems: [
                {
                    xtype: 'toolbar',
                    items: [
                        {
                            text: 'Expand All',
                            handler: function() {
                                tree.expandAll();
                            }
                        },
                        {
                            text: 'Collapse All',
                            handler: function() {
                                tree.collapseAll();
                            }
                        }
                    ]
                }
            ]
        });
    });
</script>
<script type="text/javascript">

    Ext.define('Product', {
    extend: 'Ext.data.Model',
    fields: [{
        name: 'company'
    }, {
        name: 'price',
        type: 'float'
    }, {
        name: 'date',
        type: 'date',
        dateFormat: 'Y-m-d'
    }]
});

    Ext.onReady(function() {

        Ext.QuickTips.init();

        // sample static data for the store
    var myData = [
        ['3m Co',                               71.72,  '9/1 12:00am'],
        ['Alcoa Inc',                           29.01,  '9/1 12:00am'],
        ['Altria Group Inc',                    83.81,  '9/1 12:00am'],
        ['American Express Company',            52.55,  '9/1 12:00am'],
        ['American International Group, Inc.',  64.13,  '9/1 12:00am'],
        ['AT&T Inc.',                           31.61,  '9/1 12:00am'],
        ['Boeing Co.',                          75.43,  '9/1 12:00am'],
        ['Caterpillar Inc.',                    67.27,  '9/1 12:00am'],
        ['Citigroup, Inc.',                     49.37,  '9/1 12:00am'],
        ['E.I. du Pont de Nemours and Company', 40.48,  '9/1 12:00am'],
        ['Exxon Mobil Corp',                    68.1,   '9/1 12:00am'],
        ['General Electric Company',            34.14,  '9/1 12:00am'],
        ['General Motors Corporation',          30.27,  '9/1 12:00am'],
        ['Hewlett-Packard Co.',                 36.53,  '9/1 12:00am'],
        ['Honeywell Intl Inc',                  38.77,  '9/1 12:00am'],
        ['Intel Corporation',                   19.88,  '9/1 12:00am'],
        ['International Business Machines',     81.41,  '9/1 12:00am'],
        ['Johnson & Johnson',                   64.72,  '9/1 12:00am'],
        ['JP Morgan & Chase & Co',              45.73,  '9/1 12:00am'],
        ['McDonald\'s Corporation',             36.76,  '9/1 12:00am'],
        ['Merck & Co., Inc.',                   40.96,  '9/1 12:00am'],
        ['Microsoft Corporation',               25.84,  '9/1 12:00am'],
        ['Pfizer Inc',                          27.96,  '9/1 12:00am'],
        ['The Coca-Cola Company',               45.07,  '9/1 12:00am'],
        ['The Home Depot, Inc.',                34.64,  '9/1 12:00am'],
        ['The Procter & Gamble Company',        61.91,  '9/1 12:00am'],
        ['United Technologies Corporation',     63.26,  '9/1 12:00am'],
        ['Verizon Communications',              35.57,  '9/1 12:00am'],
        ['Wal-Mart Stores, Inc.',               45.45,  '9/1 12:00am']
    ];

        // configure whether filter query is encoded or not (initially)
        var encode = false;

        // configure whether filtering is performed locally or remotely (initially)
        var local = true;

        // create the data store
    var store = Ext.create('Ext.data.ArrayStore', {
        fields: [
           {name: 'company'},
           {name: 'price',      type: 'float'},
           {name: 'lastChange', type: 'date', dateFormat: 'n/j h:ia'}
        ],
        data: myData
    });

        var filters = {
            ftype: 'filters',
            encode: encode,
            local: local,
            filters: [{
                type: 'string',
                dataIndex: 'company',
                store: 'store',
                labelField: 'company'

            }]
            };

        // use a factory method to reduce code while demonstrating
        // that the GridFilter plugin may be configured with or without
        // the filter types (the filters may be specified on the column model
        var createColumns = function (finish, start) {

            var columns = [
                {
                    dataIndex: 'company',
                    text: 'Societe',
                    width: 200,
                    filterable: true,
                    filter: {
                type: 'string'
                // specify disabled to disable the filter menu
                //, disabled: true
            }
                },
                {
                    dataIndex: 'price',
                    text: 'Prix',
                    id: 'price'
                }
            ];

            return columns.slice(start || 0, finish);
        };

        var grid = Ext.create('Ext.grid.Panel', {
            border: false,
            store: store,
            columns: createColumns(2),
            loadMask: true,
            features: [filters],
            dockedItems: [Ext.create('Ext.toolbar.Paging', {
                dock: 'bottom',
                store: store
            })]
        });


        var win = Ext.create('Ext.Window', {
            title: 'Exemple de Grid',
            height: 400,
            width: 700,
            layout: 'fit',
            items: grid
        }).show();

        store.load();
    });
</script>
</head>

<body>

<table><tr>
    <div id="grailsLogo" role="banner"><a href="/CV1/index.gsp"><img
            src="${resource(dir: 'images', file: 'banner.png')}" alt="Grails"/></a></div>
</tr>
</table>

<div class='content'>

    <div class='nav'>
        <table>
            <tr>
                <td>
                    <span class="menuButton">
                        <g:link class="home" url="/CV1/index.gsp">
                            Home
                        </g:link>
                    </span>.
                </td>
                <td>
                    <span class="menuButton">
                        <g:link class="list" controller="contact" action="list">
                            Contacts
                        </g:link>
                    </span>.
                </td>
                <td>
                    <span class="menuButton">
                        <g:link class="list" controller="societe" action="list">
                            Societes
                        </g:link>
                    </span>
                </td>
                <td>
                    <span class="menuButton">
                        <g:link class="list" controller="fond" action="list">
                            Fonds
                        </g:link>
                    </span>
                </td>
                <td>
                    <span class="menuButton">
                        <g:link class="list" controller="utilisateur" action="list">
                            Administration
                        </g:link>
                    </span>
                </td>
                <td>
                    <sec:ifNotLoggedIn>
                        <span class="menuButton">
                            <g:link class="create" controller="login" action="auth">
                                Login
                            </g:link>
                        </span>
                    </sec:ifNotLoggedIn>
                    <sec:ifAnyGranted roles="ROLE_USER_ALEX, ROLE_ADMIN">
                        <sec:username/>
                    </sec:ifAnyGranted>
                </td>
                <td>
                    <sec:ifAnyGranted roles="ROLE_USER_ALEX, ROLE_ADMIN">
                        <span class="menuButton">
                            <g:link class="delete" controller="logout">
                                Logout
                            </g:link>
                        </span>
                    </sec:ifAnyGranted>
                </td>
            </tr>

        </table>
    </div>
</div>

<div class="nav">
    <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label"
                                                                               args="[entityName]"/></g:link></span>
</div>

<div class="body">
    <h1><g:message code="default.list.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message">${flash.message}</div>
    </g:if>
    <div class="list">
        <table>
            <thead>
            <tr>

                <g:sortableColumn property="id" title="${message(code: 'experimentation.id.label', default: 'Id')}"/>

                <g:sortableColumn property="type"
                                  title="${message(code: 'experimentation.type.label', default: 'Type')}"/>

                <g:sortableColumn property="quantite"
                                  title="${message(code: 'experimentation.quantite.label', default: 'Quantite')}"/>

                <g:sortableColumn property="annee"
                                  title="${message(code: 'experimentation.annee.label', default: 'Annee')}"/>

            </tr>
            </thead>
            <tbody>
            <g:each in="${experimentationInstanceList}" status="i" var="experimentationInstance">
                <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">

                    <td><g:link action="show"
                                id="${experimentationInstance.id}">${fieldValue(bean: experimentationInstance, field: "id")}</g:link></td>

                    <td>${fieldValue(bean: experimentationInstance, field: "type")}</td>

                    <td>${fieldValue(bean: experimentationInstance, field: "quantite")}</td>

                    <td>${fieldValue(bean: experimentationInstance, field: "annee")}</td>

                </tr>
            </g:each>
            </tbody>
        </table>
    </div>

    <div class="paginateButtons">
        <g:paginate total="${experimentationInstanceTotal}"/>
    </div>
</div>

<table>
    <tr>
        <td>
            <div id="tree-div"></div></td>
        <td>

            <%
                def chartColumns = [['string', 'Type'], ['number', 'Quantite']]
            %>

            <gvisualization:pieCoreChart elementId="piechart" title="Experimentations par quantite" width="${450}"
                                         height="${300}"
                                         columns="${chartColumns}" data="${chartData}"/>
            <div id="piechart"></div>
        </td>
    </tr>
    <tr>
        <div id="grid-example" style="margin: 10px;"></div>
    </tr>
</table>

</body>
</html>
