<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %>

<form method="post">
    <div>
        Id: <br>
        <input name="id" value="${user.id}">
    </div>
    <div>
        Password: <br>
        <input name="password" value="${user.password}">
    </div>
    <div>
        Fullname: <br>
        <input name="fullname" value="${user.fullname}">
    </div>
    <div>
        Email: <br>
        <input name="email" value="${user.email}">
    </div>
    <div>
        Role: <br>
        <input ${user.admin?'checked':''} name="admin" type="radio" value="true"> Admin
        <input ${user.admin?'':'checked'} name="admin" type="radio" value="false"> User
    </div>
    <div>
        <button formaction="${base}/create">Create</button>
        <button formaction="${base}/update">Update</button>
        <button formaction="${base}/delete">Delete</button>
        <a href="${base}/index">Reset</a>
    </div>
</form>