<%@ page pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
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
  	 <c:forEach var="vd" items="${videos}">
  		<tr>
            <td>${vd.id}</td>
            <td>${vd.title}</td>
          	<td>${vd.poster}</td> 
            <td>${vd.description}</td>  
            <td>
                <a href="${ctx}/edit/${vd.id}">Edit</a>
            </td>
        </tr>
  	</c:forEach> 
    </tbody>
</table>