<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Session"%>
<%
  Session s = HibernateUtil.getSessionFactory().openSession();
  Transaction t = s.beginTransaction();
  mypackage.Customer obj = (mypackage.Customer) s.load(mypackage.Customer.class,(String)session.getAttribute("username"));
  float amount =(float) Double.parseDouble(request.getParameter("amount2"));
  float balance = obj.getBalance();
  if(balance>amount)
  {
      obj.setBalance(balance-amount);
      s.update(obj);
  }
  t.commit();
  s.close();
  response.sendRedirect("account.jsp");
%>