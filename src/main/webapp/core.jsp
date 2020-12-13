<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/12/13/013
  Time: 11:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<!-- 核心标签、国际化标签、SQL标签 -->
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <c:set var="test" value="1234" scope="page"></c:set> <!-- 声明变量 -->
<%--    <c:remove var="test"></c:remove>--%>
    <c:out value="${test}"></c:out><br/>
    test=${test}
<hr />
    <!-- 分支与判断 -->
    <c:set var="score" value="75" scope="page"></c:set> <!-- 声明变量 -->

   <%-- <c:if test="${score>=90}">
        优秀
    </c:if>

    <c:if test="${score>=80 and score<90}">
        良好
    </c:if>

    <c:if test="${score>=60 and score<80}">
        及格
    </c:if>

    <c:if test="${score<60}">
        较差
    </c:if>--%>

<%--    <c:choose>
        <c:when test="${score>=90}">优秀</c:when>
        <c:when test="${score>=80}">良好</c:when>
        <c:when test="${score>=60}">及格</c:when>
        <c:otherwise>
            较差
        </c:otherwise>
    </c:choose>--%>

    <c:set var="str" value="abc,123|eee,567" scope="page"></c:set>
    <!-- 循环 -->
  <%--  <c:forTokens var="s" items="${str}" delims=",|">
        ${s}<br />
    </c:forTokens>--%>
    <!-- 定义一个列表 -->
    <%
        List<Object> objList = new ArrayList<Object>();
        objList.add(123);
        objList.add("abcd");
        objList.add(false);

        request.setAttribute("objList",objList);
    %>
    <table border="1" width="100%">
        <c:forEach var="obj" items="${objList}" varStatus="status">
            <tr <c:if test="${status.count%2==0}">bgcolor="aqua"</c:if> >
                <td>${status.count}</td>
                <td>${obj}</td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
