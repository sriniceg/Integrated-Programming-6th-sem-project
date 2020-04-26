<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Session"%>
<%
  Session s = HibernateUtil.getSessionFactory().openSession();
  Transaction t = s.beginTransaction();
  mypackage.Customer obj = (mypackage.Customer) s.load(mypackage.Customer.class,(String)session.getAttribute("username"));
  float amount =(float) Double.parseDouble(request.getParameter("amount1"));
  obj.setBalance(amount+obj.getBalance());
  s.update(obj);
  t.commit();
  s.close();
  response.sendRedirect("account.jsp");
%>