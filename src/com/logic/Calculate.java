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
 * Servlet implementation class Calculate
 */
@WebServlet("/Calculate")
public class Calculate extends HttpServlet
{
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Calculate()
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
		expression.setPrecision(50);
		BigDecimal result = BigDecimal.ZERO;
		response.setContentType("text/html");
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("index.jsp");
		try 
		{
			result =  expression.eval();
			String output = String.format("%s  = %s", input.trim().replaceAll("[^,()\\w+\\d+\\+\\-*^%\\/]\\s+", ""), result.toPlainString());
			request.setAttribute("result", output);
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