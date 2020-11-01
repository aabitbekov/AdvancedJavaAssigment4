<%@include file="jsp/headera.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fn" %>

<div style="margin: auto; width: 30%; border: 3px solid green; padding: 10px;">
        <a href="${pageContext.request.contextPath}"><h1>Books info</h1></a>
        <input type="text" id="searchId" style="width: 80%;" placeholder="book name" name="search">
        <input type="button" style="width: 15%;" name="search" value="search" onclick="searchBook()">
        <h2>
        <c:set var="crud" value='${requestScope.crud}' />
        <c:if test="${crud != null}">
            <c:choose>
                <c:when test="${crud.charAt(1) == '1'.charAt(0) && crud.charAt(0) == 'c'.charAt(0) }">
                    <c:out value="The New Book Was Successfully Added" />
                    <c:out value="You can find it in the list" />
                </c:when>
                <c:when test="${crud.charAt(1) == '1'.charAt(0) && crud.charAt(0) == 'd'.charAt(0)}">
                    <c:out value="The Book Was Successfully Deleted" />
                </c:when>
                <c:when test="${crud.charAt(1) == '1'.charAt(0) && crud.charAt(0) == 'u'.charAt(0)}">
                    <c:out value="The Book Was Successfully Updated" />
                </c:when>
                <c:otherwise>
                    <c:out value="Something is wrong" />
                </c:otherwise>
            </c:choose>
        </c:if>
        </h2>
        <form action="${pageContext.request.contextPath}/BookServletforAdmin" method="post">
            <table style="border-collapse: collapse; border: 1px solid black; width: 100%" id="book-">
                <tr>
                    <td>
                        <input style="width: 100%" type="hidden" id="bookId" name="bookId" value=""/>&nbsp;&nbsp;
                        <input type="submit" name="submit" value="update">&nbsp;&nbsp;
                        <input type="submit" name="submit" value="delete">
                    </td>
                    <td style="width:40%" rowspan="6"><img id="bookImage" src="" alt="book poster" width="128px" height="192px" /></td>
                </tr>
                <tr><td><input style="width: 100%" type="text" id="bookName" name="bookName" placeholder="book name" value=""/></td></tr>
                <tr><td><input style="width: 100%" type="text" id="bookAuthor" name="bookAuthor" placeholder="book author" value=""/></td></tr>
                <tr><td colspan="2"><input style="width: 100%" type="url" id="image" name="image" placeholder="image URL" value=""/></td></tr>
            </table>
        </form>
        
        
        
        <c:forEach var="book" items="${bookList}" >
            <form action="${pageContext.request.contextPath}/BookServletforAdmin" method="post">
                <table style="border-collapse: collapse; border: 1px solid black; width: 100%" id="book-<c:out value="${book.ISBN}"/>">
                    <tr>
                        <td>
                            <input style="width: 100%" type="hidden" name="bookISBN" value="<c:out value="${book.ISBN}"/>">&nbsp;&nbsp;
                            <input type="submit" name="submit" value="update">&nbsp;&nbsp;
                            <input type="submit" name="submit" value="delete">
                     <tr><td><input style="width: 100%" type="text" name="bookName" placeholder="book name" value="<c:out value="${book.name}"/>"></td></tr>
                    <tr><td><input style="width: 100%" type="text" name="bookAuthor" placeholder="book author" value="<c:out value="${book.author}"/>"></td></tr>
                    <tr><td colspan="2"><input style="width: 100%" type="url" name="imageURL" placeholder="image URL" value="<c:out value="${book.image}"/>"></td></tr>
                </table>
            </form>
            <br>
        </c:forEach>
        
        
        
        
        
        <h1>add a new book</h1>
        <form action="${pageContext.request.contextPath}/BookServletforAdmin" method="post">
            <table style="width: 100%">
                <tr><td><input style="width: 100%" type="text" name="ISBN" placeholder="ISBN"></td></tr>
                <tr><td><input style="width: 100%" type="text" name="bookName" placeholder="book name"></td></tr>
                <tr><td><input style="width: 100%" type="text" name="bookAuthor" placeholder="author"></td></tr>
                <tr><td><input style="width: 100%" type="text" name="movieName" placeholder="movie name"></td></tr>
                <tr><td><input style="width: 100%" type="url" name="image" placeholder="image URL"></td></tr>
                <tr><td><input type="submit" name="submit" value="add"></td></tr>
            </table>
        </form>
    </div>






<%@include file="jsp/footer.jsp"%>