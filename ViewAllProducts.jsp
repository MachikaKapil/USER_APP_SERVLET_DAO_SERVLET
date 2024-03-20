<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "test.ProductBean,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
ArrayList<ProductBean> al = (ArrayList<ProductBean>)request.getAttribute("alist");
if(al.size()==0){
    out.println("No Products Available...<br>");
}else{
Iterator<ProductBean> it = al.iterator();
while(it.hasNext()){
     ProductBean pb = (ProductBean)it.next();
     out.println(pb.getCode()+"&nbsp&nbsp"+pb.getName()+"&nbsp&nbsp"+
pb.getPrice()+"&nbsp&nbsp"+pb.getQty()+"<br>");
}
}
%>
<%@include file = "link.html" %>
</body>
</html>