<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<body>
   <%-- 5+3=${5+3}
    <br />
    name=<%=request.getParameter("name")%><br />
    name=${param.name}
    <br/>--%>

   test=${header["user-agent"]}
 ${people.age}
   ${people["age"]}
<%--${header.user-agent}--%><!--error-->
    ${empty test }
<hr />
</body>
</html>
