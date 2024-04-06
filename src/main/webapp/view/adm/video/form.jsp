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
        Poster: (${video.poster})<br>
        <input name="poster" value="${video.poster}">
        <input name="poster_file" type="file">
    </div>
    <div>
        View Count: <br>
        <input name="views" value="${video.views}">
    </div>
    <div>
        Description: <br>
        <input name="description" value="${video.description}">
    </div>
    <div>
        <button formaction="${base}/create">Create</button>
        <button formaction="${base}/update">Update</button>
        <button formaction="${base}/delete">Delete</button>
        <a href="${base}/index">Reset</a>
    </div>
</form>