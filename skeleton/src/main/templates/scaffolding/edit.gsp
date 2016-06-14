<!DOCTYPE html>
<html>
<head>
  <meta name="layout" content="main"/>
  <g:set var="entityName" value="\${message(code: '${propertyName}.label')}"/>
  <title><g:message code="default.edit.label" args="[entityName]"/></title>
</head>

<body>
<div class="nav" role="navigation">
  <ul>
    <li><a class="home" href="\${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
    <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]"/></g:link></li>
    <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]"/></g:link></li>
  </ul>
</div>

<div id="edit-${propertyName}" class="content scaffold-edit" role="main">
  <h1><g:message code="default.edit.label" args="[entityName]"/></h1>

  <g:render template="/messages" model="[bean: this.${propertyName}]"/>

  <g:form resource="\${this.${propertyName}}" method="PUT">
    <g:hiddenField name="version" value="\${this.${propertyName}?.version}"/>
    <fieldset class="form">
      <f:all bean="${propertyName}"/>
    </fieldset>
    <fieldset class="buttons">
      <input class="save" type="submit" value="\${message(code: 'default.button.update.label')}"/>
    </fieldset>
  </g:form>
</div>
</body>
</html>
