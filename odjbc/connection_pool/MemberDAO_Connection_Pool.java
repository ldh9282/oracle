package connection_pool;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



/**
 * Servlet implementation class MemberDAO_Connection_Pool
 */
@WebServlet("/memberDAO_Connection_Pool")
public class MemberDAO_Connection_Pool extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		doHandle(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doHandle(request, response);
	}

	protected void doHandle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				
		request.setCharacterEncoding("utf-8");
		
		MemberDAO memberDAO = new MemberDAO();
		
		List<MemberVO> memberList = memberDAO.listMembers();
		memberList.forEach((member) -> {
			System.out.println(member.toString());	
		});
		response.setContentType("text/html;charset=UTF-8");
		
		
		PrintWriter out = response.getWriter();
		out.append("<!DOCTYPE html>"
				+ "<html>"
				+ "<head>"
				+ "<meta charset=\"UTF-8\">"
				+ "<title>Insert title here</title>"
				+ "  <style>"
                + "      table, td {text-align:center; border: 1px solid lightgrey;}"
                + "  </style>"

				+ "</head>"
				+ "<body>"
				+ "<table style='margin:auto;'>"
                + "    <tr style='background-color:lightgreen;'>"
                + "        <td>아이디</td>"
                + "        <td>비밀번호</td>"
                + "        <td>이름</td>"
                + "        <td>이메일</td>"
                + "        <td>가입일</td>"
                + "    </tr>");
				
        memberList.forEach((member) -> {
        	
        	String mid = member.getMid();
        	String mpassword = member.getMpassword();
        	String mname = member.getMname() ;
        	String memail = member.getMemail() ;
        	Date mjoinDate = member.getMjoinDate() ;
        	
        	out.append(
        			  "<tr>"
					+ "    <td>" + mid + "</td>"
					+ "    <td>" + mpassword + "</td>"
					+ "    <td>" + mname +"</td>"
					+ "    <td>" + memail +"</td>"
					+ "    <td>" + mjoinDate +"</td>"
					+ "</tr>");
        });

		out.append("</table></body>"
			+ "</html>");
		
		out.flush();
		out.close();
//		
	}
}
