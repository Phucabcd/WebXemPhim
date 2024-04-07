package servletAdm;

import java.io.IOException;
import java.util.List;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import dao.UserDao;
import dao.UserDaoImpl;
import entity.User;
import jpa.XParam;

@WebServlet({
	"/oe/adm/account/index",
	"/oe/adm/account/create",
	"/oe/adm/account/update",
	"/oe/adm/account/delete",
	"/oe/adm/account/edit/*"
})
public class AdmServlet  extends HttpServlet{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		UserDao dao = new UserDaoImpl();
		String path = req.getServletPath();
		User user = new User();
		try {
			BeanUtils.populate(user, req.getParameterMap());
		} catch (Exception e) {
			e.printStackTrace();
		}
		if(path.contains("create")) {
			dao.create(user);
		}else if(path.contains("update")) {
			dao.update(user);
		}else if(path.contains("delete")) {
			dao.delete(user);
		}else if(path.contains("edit")) {
			String id = req.getPathInfo().substring(1);
			user = dao.findById(id);
		}
		
		List<User> users = dao.findAll();
		req.setAttribute("user", user);
		req.setAttribute("users", users);
		
		req.getRequestDispatcher("/view/adm/user/index.jsp").forward(req, resp);
	}
}
