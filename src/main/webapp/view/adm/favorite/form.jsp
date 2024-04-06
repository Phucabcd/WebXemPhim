<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %>

<form method="post">
    <div>
        Id: <br>
        <input name="id" value="${favorite.id}">
    </div>
    <div>
        Video: <br>
        <input name="videoId" value="${favorite.video.id}">
    </div>
    <div>
        User: <br>
        <input name="userId" value="${favorite.user.id}">
    </div> 
    <div>
        Date: <br>
        <fmt:formatDate var="date" value="${favorite.likeDate}" pattern="MM/dd/yyyy"/>
        <input name="likeDate" value="${date}">
    </div>
    <div>
        <button formaction="${base}/create">Create</button>
        <button formaction="${base}/update">Update</button>
        <button formaction="${base}/delete">Delete</button>
        <a href="${base}/index">Reset</a>
    </div>
</form>