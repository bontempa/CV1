<!doctype html>
<html>
<head>
<meta name="layout" content="main"/>
<title>Welcome to Grails</title>
<style type="text/css" media="screen">
#status {
    background-color: #eee;
    border: .2em solid #fff;
    margin: 2em 2em 1em;
    padding: 1em;
    width: 12em;
    float: left;
    -moz-box-shadow: 0px 0px 1.25em #ccc;
    -webkit-box-shadow: 0px 0px 1.25em #ccc;
    box-shadow: 0px 0px 1.25em #ccc;
    -moz-border-radius: 0.6em;
    -webkit-border-radius: 0.6em;
    border-radius: 0.6em;
}

.ie6 #status {
    display: inline; /* float double margin fix http://www.positioniseverything.net/explorer/doubled-margin.html */
}

#status ul {
    font-size: 0.9em;
    list-style-type: none;
    margin-bottom: 0.6em;
    padding: 0;
}

#status h1 {
    text-transform: uppercase;
    font-size: 1.1em;
    margin: 0 0 0.3em;
}

#page-body {
    margin: 2em 1em 1.25em 18em;
}

h2 {
    margin-top: 1em;
    margin-bottom: 0.3em;
    font-size: 1em;
}

p {
    margin: 0.25em 0;
}

#controller-list ul {
    list-style-position: inside;
}

#controller-list li {
    list-style-position: inside;
    margin: 0.25em 0;
}

@media screen and (max-width: 480px) {
    #status {
        display: none;
    }

    #page-body {
        margin: 0 1em 1em;
    }

    #page-body h1 {
        margin-top: 0;
    }
}

    /* styles for JSF 2.0 Introduction project */

body {
    font-family: Helvetica, sans-serif;
    background-color: #f9f9f9;
    color: #444;
}

h4 {
    margin: 10px 0
}

.smallText {
    font-size: small;
    text-align: center;
    color: #777;
    margin: 5px 0 15px;
}

label {
    font-size: small;
    margin-left: 10px;
    margin-right: 10px;
}

input {
    margin: 5px
}

#mainContainer {
    position: relative;
    margin-left: auto;
    margin-right: auto;
    width: 901px;
    height: 250px;
    /*border: 1px solid #000; */
}

#logo {
    margin-left: 10px;
}

#left {
    float: left
}

#right {
    float: right
}

.greyBox {
    background-color: #f5f5f5;
    border: 1px solid #ccc;
}

#squareContainer {
    position: absolute;
    width: 234px;
    top: -5px;
    left: -5px;
}

.square {
    width: 105px;
    height: 105px;
    margin: 5px;
    float: left;
    border: 1px solid #ccc;
}

#backButton {
    margin: 55px 79px;
}

.highlight {
    font-size: larger;
    color: #c00;
}

.error {
    font-size: smaller;
    color: #c00;
}

.subContainer {
    margin: 10px;
    padding: 10px;
    width: 450px;
    height: 300px;
    position: relative;

}

    /* Welcome Page Containers*/
.welcomeNewsContainer {
    margin-top: 10px;
    vertical-align: top;
    padding: 10px;
    min-height: 210px;
    width: 380px;
    background-color: #f5f5f5;
    border: 1px solid #ccc;
    position: relative;

}

.welcomeExtraInfoContainer {
    margin: 10px;
    padding: 10px;
    width: 300px;
    position: relative;

}

    /* headers */
.sectionHeader {

    color: #585858;
    font-weight: normal;
    font-size: 12px;
    font-family: Arial, Helvetica, sans-serif, Tahoma;
    height: 22px;
    font-weight: bold;
    background: url(#{context.path}/resources/images/gray_header.png) repeat-x;
    text-align: center;
    margin-left: auto;
    margin-right: auto;

}

.sectionSubHeader {

    color: gray;
    font-weight: normal;
    font-size: 12px;
    font-family: Arial, Helvetica, sans-serif, Tahoma;
    height: 22px;
    font-weight: normal;
    background: url(#{context.path}/resources/images/gray_header.png) repeat-x;

}

    /* For Nodes */
.ygtv-checkbox .ygtv-highlight0 .ygtvcontent,
.ygtv-checkbox .ygtv-highlight1 .ygtvcontent,
.ygtv-checkbox .ygtv-highlight2 .ygtvcontent {
    padding-left: 20px;
}

</style>
</head>

<body>
    <div id="mainContainer">

    <div id="left" class="subContainer greyBox">

        <td valign="top" width="75%">
            <strong style="color: blue;">Welcome To</strong><strong style="color: rgb(255, 163, 25);"> CV </strong><strong
                style="color: blue;">!</strong><br/><br/><br/>
        </td>

    </div>

    <div id="right" class="welcomeNewsContainer sectionSubHeader">

        <span class="sectionHeader">NEWS</span>
        <br/><br/><br/>

        <div id="controller-list" role="navigation">
            <h2>Available Controllers:</h2>
            <ul>
                <g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName } }">
                    <li class="controller"><g:link controller="${c.logicalPropertyName}">${c.fullName}</g:link></li>
                </g:each>
            </ul>
        </div>
    </div>
     </div>
</body>
</html>
