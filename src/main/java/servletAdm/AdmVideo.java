package servletAdm;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import dao.VideoDAO;
import dao.VideoDAOImpl;
import entity.Video;

@MultipartConfig
@WebServlet({
	"/oe/adm/video/index",
	"/oe/adm/video/create",
	"/oe/adm/video/update",
	"/oe/adm/video/delete",
	"/oe/adm/video/edit/*"
})
public class AdmVideo extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		VideoDAO dao = new VideoDAOImpl();
		String path = req.getServletPath();
		Video video = new Video();
		try {
			BeanUtils.populate(video, req.getParameterMap());
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		if(path.contains("create")) {
			dao.create(video);
		}else if(path.contains("update")) {
			dao.update(video);
		}else if(path.contains("delete")) {
			dao.deleteById(video.getId());
		}else if(path.contains("edit")) {
			String id = req.getPathInfo().substring(1);
			video = dao.findById(id);
		}
		
		List<Video> videos = dao.findAll();
		req.setAttribute("video", video);
		req.setAttribute("videos", videos);
		
		
		req.getRequestDispatcher("/view/adm/video/index.jsp").forward(req, resp);
	}
}
