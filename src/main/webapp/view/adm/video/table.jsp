<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %>

<table border="1" style="width:100%">
    <thead>
        <tr>
            <th>Id</th>
            <th>Title</th>
            <th>Poster</th>
            <th>Description</th>
            <th></th>
        </tr>
    </thead>
    <tbody>
    <c:forEach var="v" items="${videos}">
        <tr>
            <td>${v.id}</td>
            <td>${v.title}</td>
            <td>${v.poster}</td>
            <td>${v.description}</td>
            <td>
                <a href="${base}/edit/${v.id}">Edit</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>