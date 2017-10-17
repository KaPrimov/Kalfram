package com.logic;

import java.io.IOException;
import java.math.BigDecimal;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.logic.Expression.ExpressionException;

/**
 * Servlet implementation class AddNumbers
 */
@WebServlet("/AddNumbers")
public class AddNumbers extends HttpServlet
{
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AddNumbers()
	{
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String input = request.getParameter("expression");
		Expression expression = new Expression(input);
		BigDecimal result = BigDecimal.ZERO;
		response.setContentType("text/html");
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("index.jsp");
		try 
		{
			result =  expression.eval();
			request.setAttribute("result", result.toPlainString());
			requestDispatcher.forward(request, response);
		} 
		catch(ArithmeticException ae) 
		{
			request.setAttribute("error", ae.getMessage());
			requestDispatcher.forward(request, response);
		} 
		catch(ExpressionException ee) 
		{
			request.setAttribute("error", ee.getMessage());		
			requestDispatcher.forward(request, response);
		}
	}

}