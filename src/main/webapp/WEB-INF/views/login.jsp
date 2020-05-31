<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

    <title>Форум job4j</title>
</head>
<body>
<div class="container mt-3">

    <div class="row">
        <div class="col-sm">
            <c:if test="${not empty errorMessge}">
                <div class="alert alert-danger" role="alert">
                        ${errorMessge}
                </div>
            </c:if>
            <form name='login' action="<c:url value='/login'/>" method='POST'>
                <div class="form-group">
                    <label for="username">Логин</label>
                    <input type="text" class="form-control" id="username" name='username' aria-describedby="emailHelp" placeholder="Enter email">
                </div>
                <div class="form-group">
                    <label for="password">Пароль</label>
                    <input type="password" class="form-control" id="password" name='password' placeholder="Password">
                </div>
                <button type="submit" class="btn btn-primary">Submit</button>
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
            </form>
        </div>
    </div>
</div>
</body>
</html>