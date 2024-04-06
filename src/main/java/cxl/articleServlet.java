package cxl;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/index/article")
public class articleServlet  extends HttpServlet{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<listTheLoai> theLoai = List.of(
				new listTheLoai(1, "Tất cả"),
				new listTheLoai(2, "Hành động"),
				new listTheLoai(3, "Hài hước"),
				new listTheLoai(4, "Phép thuật"),
				new listTheLoai(5, "Kinh dị"),
				new listTheLoai(6, "Siêu nhân")
				);
		req.setAttribute("tl", theLoai);
		req.getRequestDispatcher("/view/layout/article.jsp").forward(req, resp);
	}
}
