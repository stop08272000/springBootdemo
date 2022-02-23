<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<jsp:include page="layout/navbar.jsp" />    
<!DOCTYPE html>
<html lang="zh-TW">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


  <script src="//code.jquery.com/jquery-1.9.1.js"></script>
  <script src="//code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
  <link rel="stylesheet" href="http://jqueryui.com/resources/demos/style.css">
 <link rel="stylesheet" href="//code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css">
   <script>  
  $(function() {
    $( "#datepicker" ).datepicker({ minDate: 0, maxDate: "1M+14D" });
  });
  </script>
 

</head>
<body>
  
 <div align="center">
        <h1>訂位系統</h1>
        <form method="post" action="${contextRoot}/veirfy" modelAttribute="booking" method="post">
        <table>
 
<tr><td>姓名 :<input type="text"  name="name">
            <tr>
                <td>人數 :
                    <select name="several">
                        <option>請選擇你的人數</option>
                        <option>1</option>
                        <option>2</option>
                        <option>3</option>
                        <option>4</option>
                        <option>5</option>
                        <option>6</option>
                        <option>7</option>
                        <option>8</option>
                    </select>

             <tr><td>訂位日期:<input type="text" id="datepicker" name="reservation_date" ><br>
             <tr>
<!--              datetime-local -->
             
              <td>桌號 :
                    <select name="number">
                        <option>桌號選擇</option>
                        <option>5</option>
                        <option>6</option>
                        <option>7</option>
                        <option>8</option>
                    </select><br>
             
             <tr><td>備註 :<input type="text"  name="remark"><br>
             
            <input type="submit" value="確定" />
        </table>
<!--         <a href="../QueryServlet"><input type="button" value="查詢全部" /></a> -->
        </form>
        </div>
    
</body>
</html>