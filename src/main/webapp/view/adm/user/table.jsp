<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %>
 
<table border="1" style="width:100%">
    <thead>
        <tr>
            <th>Username</th>
            <th>Password</th>
            <th>Fullname</th>
            <th>Email</th>
            <th>Role</th>
            <th></th>
        </tr>
    </thead>
    <tbody>
    <c:forEach var="u" items="${users}">
        <tr>
            <td>${u.id}</td>
            <td>${u.password}</td>
            <td>${u.fullname}</td>
            <td>${u.email}</td>
            <td>${u.admin?'Admin':'User'}</td>
            <td>
                <a href="${ctx}/edit/${u.id}">Edit</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>