package fiter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import entity.User;

@WebFilter({
        "/oe/account/change-password",
        "/oe/account/edit-profile",
        "/oe/video/checkout",
        "/oe/video/favorite/*", 
        "/oe/video/like/*",
        "/oe/account/logoff",
        "/oe/adm/*"
        
})
public class AuthFilter implements Filter {

    @Override
    public void destroy() {

    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) request;
//        HttpSession session = req.getSession();
        User user = (User) req.getSession().getAttribute("user");
        if (user == null) {
            String path = req.getServletPath();
            req.getSession().setAttribute("backUrl", path);
            if (!response.isCommitted()) {
                request.getRequestDispatcher("/oe/account/login").forward(req, response);
            }
        } else {
            chain.doFilter(request, response);
        }
    }

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

}
