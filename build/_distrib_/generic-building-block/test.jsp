<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<HTML>
<HEAD>
      <TITLE>Calculate Squares!!</TITLE>
</HEAD>
<BODY>
<%!
      int square (int x) { return (x * x); }
%>
 
<%    try {
            // request.getParameter() takes a String and returns
            // a String. We want a number so we will use
            // Integer.parseInt() to give use the numerical value
            // of the String. If the input from the user is not
            // a String, a NumberFormatException will be thrown.
            String s = request.getParameter("test_get");
            int a = 0;
            if (s!=null) a = Integer.parseInt(s);
%>
 
Here is a list of squares up to <%= a %> <BR>
<%
            for (int i=1; i<=a; i++) { %>
                  The square of <%= i %> is <%= /* try it */ square(i) %> <BR>
<%          } // end of for loop
           
            // now we will set an attribute in the session object
            // and return the user to the input form
            session.setAttribute("last", String.valueOf(a));
%>
      Now let's <A HREF="inputsquares.jsp">compute some more squares!</A>
<%
      } catch (NumberFormatException e) {
            %>
                  You didn't enter a number!!
                  <A HREF="inputsquares.jsp">Try again</A>.
            <%
      }
%>
</BODY>
</HTML>
 