package org.hyh.servlet;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.util.*;
import org.hyh.biz.DataClass; 
public class Update extends HttpServlet {
    private static final String CONTENT_TYPE = "text/html; charset=GBK";

    //Initialize global variables
    public void init() throws ServletException {
    }

    //Process the HTTP Get request
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws
            ServletException, IOException {
        response.setContentType(CONTENT_TYPE);
        PrintWriter out = response.getWriter();
        String id=request.getParameter("id");
        HttpSession session=request.getSession();
        session.setAttribute("id",id);
        DataClass bean=new DataClass();
        ArrayList list1=new ArrayList();
        bean.setId(id);
        list1=bean.getAllDataList();
        if(list1!=null){
            request.setAttribute("list1",list1);
            request.getRequestDispatcher("update.jsp").forward(request,response);
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
