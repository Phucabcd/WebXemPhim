<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %> 

<form method="post">
    <div>
        Id: <br>
        <input name="id" value="${video.id}">
    </div>
    <div>
        Title: <br>
        <input name="title" value="${video.title}">
    </div>
    <div>
    	Poster: <br>
        <input name="poster" value="${video.poster}">
    </div>
    <div>
        View Count: <br>
        <input name="views" value="${video.views}">
    </div>
    <div>
        Description: <br>
        <input name="description" value="${video.description}">
    </div>
    <div class="mt-3">
        <button formaction="${ctx}/create">Create</button>
        <button formaction="${ctx}/update">Update</button>
        <button formaction="${ctx}/delete">Delete</button>
        <a href="${ctx}/index">Reset</a>
    </div>
</form>