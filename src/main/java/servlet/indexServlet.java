package servlet;

import java.io.IOException;
import java.util.List;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import dao.FavoriteDAO;
import dao.FavoriteDAOImpl;
import dao.UserDao;
import dao.UserDaoImpl;
import dao.VideoDAO;
import dao.VideoDAOImpl;
import entity.Favorite;
import entity.User;
import entity.Video;

@WebServlet({
			"/oe/video/list", 	
			"/oe/video/detail/*", 
			"/oe/video/favorite/*", 
			"/oe/video/like/*",
			"/oe/video/unlike/*"
			})
public class indexServlet extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		VideoDAO vdao = new VideoDAOImpl();
		FavoriteDAO fdao = new FavoriteDAOImpl();
		
		User userlog = (User) req.getSession().getAttribute("user");
		if (userlog != null) {
			req.setAttribute("ttdn", userlog.getFullname());
			
		} else {
			req.setAttribute("ttdn", "");
		}

		String path = req.getServletPath();
		if (path.contains("list")) {
			List<Video> videos = vdao.findAll();
			req.setAttribute("videos", videos);
			req.setAttribute("page", "/view/site/video/list.jsp");

		} else if (path.contains("detail")) {
		    String videoId = req.getPathInfo().substring(1);
		    Video video = vdao.findById(videoId);
		    req.setAttribute("video", video);
		    
		    if (userlog != null) {
		        
		        List<Favorite> favorites = fdao.findByUsername(userlog.getId());
		        req.setAttribute("favorites", favorites);
		    }
		    
		    req.setAttribute("page", "/view/site/video/detail.jsp");

		} else if (path.contains("unlike")) {
			Integer favoriteId = Integer.valueOf(req.getPathInfo().substring(1));
			fdao.deleteById(favoriteId);

			resp.sendRedirect(req.getContextPath() + "/oe/video/list");
			return;

		} else if (path.contains("like")) {
		    String pathInfo = req.getPathInfo();
		    if (pathInfo != null) {
		        String videoId = pathInfo.substring(1);
		        Favorite favorite = new Favorite();
		        favorite.getVideo().setId(videoId);
		        favorite.getUser().setId(userlog.getId());
		        fdao.create(favorite);
		        resp.sendRedirect(req.getContextPath() + "/oe/video/list");
		        return;
		    } else {
		     
		    }
		} else if (path.contains("favorite")) {
			User userlogfavorite = (User) req.getSession().getAttribute("user");

			if (userlogfavorite != null) {
			    String username = userlogfavorite.getId();
			    List<Favorite> favorites = fdao.findByUsername(username);
			    req.setAttribute("favorites", favorites);
			    req.setAttribute("page", "/view/site/video/favorite.jsp");
			} else {
			   
			}
		}
		req.getRequestDispatcher("/view/layout.jsp").forward(req, resp);
	}
}

