<!DOCTYPE html>
<html>
<head>
  <meta name="layout" content="main"/>
  <g:set var="entityName" value="\${message(code: '${propertyName}.label')}"/>
  <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<nav class="navbar toolbar">
  <div class="navbar-form navbar-right">
    <g:link class="create" action="create" class="btn btn-primary"><g:message code="default.new.label" args="[entityName]"/></g:link>
  </div>
</nav>

<div id="list-${propertyName}" class="content scaffold-list" role="main">
  <h1 class="page-header"><g:message code="default.list.label" args="[entityName]"/></h1>

  <g:render template="/templates/messages"/>

  <g:render template="/templates/beanList" model="\${[collection: ${propertyName}List]}"/>

  <nav class="text-center">
    <ul class="pagination">
      <g:paginate total="\${${propertyName}Count ?: 0}"/>
    </ul>
  </nav>
</div>
</body>
</html>
