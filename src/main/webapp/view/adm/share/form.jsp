<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %>

<form method="post">
    <div>
        Id: <br>
        <input name="id" value="${share.id}">
    </div>
    <div>
        Video: <br>
        <input name="videoId" value="${share.video.id}">
    </div>
    <div>
        User: <br>
        <input name="userId" value="${share.user.id}">
    </div>
	<div>
        Recipient's Emails: <br>
        <input name="emails" value="${share.emails}">
    </div>    
    <div>
        Date: <br>
        <fmt:formatDate var="date" value="${share.shareDate}" pattern="MM/dd/yyyy"/>
        <input name="shareDate" value="${date}">
    </div>
    <div>
        <button formaction="${base}/create">Create</button>
        <button formaction="${base}/update">Update</button>
        <button formaction="${base}/delete">Delete</button>
        <a href="${base}/index">Reset</a>
    </div>
</form>