package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import dao.UserDao;
import dao.UserDaoImpl;
import entity.User;

@WebServlet({ 
	"/oe/account/login", 
	"/oe/account/sign-up", 
	"/oe/account/change-password", 
	"/oe/account/logoff" 
	})
public class accountLogin extends HttpServlet {
	UserDao dao = new UserDaoImpl();

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String path = req.getServletPath();
		if (path.contains("login")) {
			String id = req.getParameter("id");
			String password = req.getParameter("password");
			if (id == null || password == null || id.isEmpty() || password.isEmpty()) {

			} else {
				User user = dao.findById(id);
				if (user == null) {
					req.setAttribute("message", "Sai tên thông tin đăng nhập");
				} else if (!user.getPassword().equals(password)) {
					req.setAttribute("message", "Sai mật khẩu");
				} else {
					req.getSession().setAttribute("user", user);
					String backUrl = (String) req.getSession().getAttribute("backUrl");
					if (backUrl != null) {
						req.getRequestDispatcher(backUrl).forward(req, resp);
						return;
					} else {
						req.setAttribute("message", "đăng nhập thành công");
					}
				}
			}
			req.getRequestDispatcher("/view/site/account/login.jsp").forward(req, resp);
		} else if (path.contains("logoff")) {
			req.getSession().invalidate();
			resp.sendRedirect(req.getContextPath() + "/oe/video/list");
			return;
		} else if (path.contains("sign-up")) {
			if (req.getMethod().equalsIgnoreCase("post")) {
				String xnpassword = req.getParameter("xnpassword");
				User user = new User();
				try {
					BeanUtils.populate(user, req.getParameterMap());
					if (user.getFullname().equals("")) {
						req.setAttribute("checkdk", "Họ và tên không được trồng");
					} else if (user.getId().equals("")) {
						req.setAttribute("checkdk", "Tên đăng nhập không được trống");
					} else if (user.getEmail().equals("")) {
						req.setAttribute("checkdk", "E không được trống");
					} else if (user.getPassword().equals("")) {
						req.setAttribute("checkdk", "Mật khẩu không được trống");
					} else if (xnpassword.equalsIgnoreCase("")) {
						req.setAttribute("checkdk", "Vui lòng xác nhận mật khẩu");
					} else {
						if (!user.getPassword().equalsIgnoreCase(xnpassword)) {
							req.setAttribute("checkdk", "Mật khẩu không khớp");
						} else {
							dao.create(user);
							resp.sendRedirect(req.getContextPath() + "/oe/video/list");
							return;
						}
					}
				} catch (Exception e) {

				}
			}
			req.getRequestDispatcher("/view/site/account/sign-up.jsp").forward(req, resp);
		} else if (path.contains("change-password")) {
		    String id = req.getParameter("id");
		    String password = req.getParameter("password");
		    String newpass1 = req.getParameter("newpass1");
		    String newpass2 = req.getParameter("newpass2");
		    
		    if (newpass1 == null || newpass2 == null) {
		        req.setAttribute("checkdmk", "Vui lòng nhập đủ mật khẩu mới!");
		    } else if (!newpass1.equals(newpass2)) {
		        req.setAttribute("checkdmk", "Xác nhận mật khẩu không đúng!");
		    } else {
		        User user = (User) req.getSession().getAttribute("user");
		        if (!id.equalsIgnoreCase(user.getId())) {
		            req.setAttribute("checkdmk", "Sai tên đăng nhập!");
		        } else if (!password.equals(user.getPassword())) {
		            req.setAttribute("checkdmk", "Mật khẩu cũ không đúng!");
		        } else {
		            user.setPassword(newpass1);
		            dao.update(user);
		            req.setAttribute("checkdmk", "Đổi mật khẩu thành công!");
		        }
		    }
		    req.getRequestDispatcher("/view/site/account/change-password.jsp").forward(req, resp);
		}

	}
}
