<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %>

<table border="1" style="width:100%">
    <thead>
        <tr>
            <th>Id</th>
            <th>Video</th>
            <th>User</th>
            <th>Date</th>
            <th></th>
        </tr>
    </thead>
    <tbody>
    <c:forEach var="s" items="${favorites}">
        <tr>
            <td>${s.id}</td>
            <td>${s.video.id}</td>
            <td>${s.user.id}</td>
            <td><fmt:formatDate value="${s.likeDate}" pattern="MM/dd/yyyy"/> </td>
            <td>
                <a href="${base}/edit/${s.id}">Edit</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>