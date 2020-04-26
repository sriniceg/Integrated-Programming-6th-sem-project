<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Session"%>
<%
  Session s = HibernateUtil.getSessionFactory().openSession();
  Transaction t = s.beginTransaction();
  mypackage.Customer obj = (mypackage.Customer) s.load(mypackage.Customer.class,(String)session.getAttribute("username"));
  float amount =(float) Double.parseDouble(request.getParameter("amount3"));
  float balance = obj.getBalance();
  if(balance>amount)
  {
      obj.setBalance(balance-amount);
      s.update(obj);
      mypackage.Customer obj1 = (mypackage.Customer) s.load(mypackage.Customer.class,request.getParameter("accno"));
      obj1.setBalance(obj1.getBalance()+balance);
      s.update(obj1);
  }
  t.commit();
  s.close();
  response.sendRedirect("account.jsp");
%>