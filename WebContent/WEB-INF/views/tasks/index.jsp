<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <h2>タスク一覧</h2>
    <ul>
        <c:forEach var="task" items="${tasks}">
            <li>
                <a href="${pageContext.request.contextPath}/show?id=${task.id}">
                    <c:out value="${task.id}"/>
                </a>
                :<c:out value="${task.content}"></c:out>
            </li>
        </c:forEach>
    </ul>

    <p><a href="${pageContext.request.contextPath}/new">新規タスクの投稿</a>