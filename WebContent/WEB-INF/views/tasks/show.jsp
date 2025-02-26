<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
           <h2>id:${task.id}のタスク詳細ページ</h2>

           <p>作成日時:<fmt:formatDate value="${task.created_at}" pattern="yyyy-MM-dd HH:mm:ss"/></p>
           <p>更新日時:<fmt:formatDate value="${task.updated_at}" pattern="yyyy-MM-dd HH:mm:ss"/></p>
           <p>タスクの内容:<c:out value="${task.content}"/></p>

    <p><a href="${pageContext.request.contextPath}/index">一覧に戻る</a>
    <p><a href="${pageContext.request.contextPath}/edit?id=${task.id}">このタスクを編集する</a></p>