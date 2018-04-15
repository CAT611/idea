package com.gec.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gec.entiy.Groupon;
import com.gec.services.Group;
import com.gec.services.impl.GroupImpl;

public class GrouponServlet extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public GrouponServlet() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		int pageNum=1;//��һҳ�Ź���ʾ
		Group g=new GroupImpl();
		int num = g.getcount();
		String newpageNum=request.getParameter("pageNum");
		if(newpageNum!=null){
			if(Integer.parseInt(newpageNum)<=1){
				pageNum=1;
			}else if(Integer.parseInt(newpageNum)>=num){
				pageNum=num;
			}else{
				pageNum = Integer.parseInt(newpageNum);
			}
		}
		List<Groupon> list = g.getGroup(pageNum);
		request.setAttribute("list", list);
		request.setAttribute("pageNum", pageNum);
		request.setAttribute("num", num);
		request.getRequestDispatcher("groupon.jsp").forward(request, response);
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
