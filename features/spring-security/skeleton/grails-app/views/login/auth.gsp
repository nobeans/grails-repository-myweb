<!DOCTYPE html>
<html>
<head>
  <meta name="layout" content="main"/>
  <title><g:message code="springSecurity.login.title"/></title>
</head>

<body>
<div class="row">
  <div class="login-form">
    <g:render template="/templates/messages"/>

    <div class="modal-content">
      <g:form controller="login" action="authenticate" method="POST" autocomplete="off" class="form-signin form-horizontal form-group">
        <div class="modal-header">
          <h4 class="modal-title">${message(code: 'springSecurity.login.message')}</h4>
        </div>

        <div class="modal-body">
          <label for="${usernameParameter ?: 'username'}" class="sr-only">
            <g:message code='springSecurity.login.username.label'/>
          </label>
          <g:textField name="${usernameParameter ?: 'username'}" class="form-control" placeholder="${message(code: 'springSecurity.login.username.label')}" required=""/>
          <label for="${passwordParameter ?: 'password'}" class="sr-only">
            <g:message code='springSecurity.login.password.label'/>
          </label>
          <g:passwordField name="${passwordParameter ?: 'password'}" class="form-control" placeholder="${message(code: 'springSecurity.login.password.label')}" required=""/>
          <input type="submit" class="btn btn-block btn-primary" value="${message(code: 'springSecurity.login.button')}"/>
        </div>
      </g:form>
    </div>
  </div>
</div>
</body>
</html>
