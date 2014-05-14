package org.hyh.servlet;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.util.*;
import org.hyh.biz.DataClass; 
public class PreUpdate extends HttpServlet {
    private static final String CONTENT_TYPE = "text/html; charset=GBK";

    //Initialize global variables
    public void init() throws ServletException {
    }

    //Process the HTTP Get request
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws
            ServletException, IOException {
        response.setContentType(CONTENT_TYPE);
        PrintWriter out = response.getWriter();
        HttpSession session=request.getSession();
        String id=session.getAttribute("id").toString();
        String name=request.getParameter("name");
        String classgrent=request.getParameter("grent");
        String result=request.getParameter("result");
        DataClass bean=new DataClass();
        ArrayList list=new ArrayList();
        bean.setId(id);
        bean.setClassGrent(classgrent);
        bean.setResult(result);
        if(bean.update()){
            list=bean.select();
            request.setAttribute("list",list);
            request.getRequestDispatcher("success.jsp").forward(request,response);
        }else{
              request.getRequestDispatcher("error.jsp").forward(request,response);
        }
    }

    //Process the HTTP Post request
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws
            ServletException, IOException {
        doGet(request, response);
    }

    //Clean up resources
    public void destroy() {
    }
}
