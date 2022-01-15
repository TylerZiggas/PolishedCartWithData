<%-- 
    Document   : index
    Created on : Apr 2021
    Author     : Ziggas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="/includes/header.html" />

<h1>Book Fair Order Form</h1>
<p>Please Select Books You Would Like to Add to Your Cart</p>

<table>
    <tr>
        <th> Book Cover </th>
        <th> Book Title </th>
        <th> Price </th>
        <th> </th>
    </tr>

    <tr>
        <td> <a href="https://cdn2.mhpbooks.com/2011/11/lotf11-320x484.png" target="_blank">
                <img src="https://cdn2.mhpbooks.com/2011/11/lotf11-320x484.png" width="100" height="130"</a> </td>
        <td> Lord of the Flies </td>
        <td> $7.35 </td>
        <td><form action="cart" method="post">
                <input type="hidden" name="productCode" value="1234">
                <input type="submit" value="Add To Cart">
            </form></td>
    </tr>

    <tr>
        <td> <a href="https://images-na.ssl-images-amazon.com/images/I/81af+MCATTL.jpg" target="_blank">
                <img src="https://images-na.ssl-images-amazon.com/images/I/81af+MCATTL.jpg" width="100" height="130"</a> </td>
        <td> The Great Gatsby </td>
        <td> $8.74 </td>
        <td><form action="cart" method="post">
                <input type="hidden" name="productCode" value="5678">
                <input type="submit" value="Add To Cart">
            </form></td>
    </tr>
    <tr>
        <td> <a href="https://m.media-amazon.com/images/I/516IbJ592JL.jpg" target="_blank">
                <img src="https://m.media-amazon.com/images/I/516IbJ592JL.jpg" width="100" height="130"</a> </td>
        <td> To Kill a Mockingbird </td>
        <td> $7.19 </td>
        <td><form action="cart" method="post">
                <input type="hidden" name="productCode" value="ABCD">
                <input type="submit" value="Add To Cart">
            </form></td>
    </tr>

    <tr>
        <td> <a href="https://cdn2.penguin.com.au/covers/400/9780141036144.jpg" target="_blank">
                <img src="https://cdn2.penguin.com.au/covers/400/9780141036144.jpg" width="100" height="130"</a> </td>
        <td> George Orwell's 1984 </td>
        <td> $8.60 </td>
        <td><form action="cart" method="post">
                <input type="hidden" name="productCode" value="EFGH">
                <input type="submit" value="Add To Cart">
            </form></td>
    </tr>
</table><br>

<c:import url="/includes/footer.jsp"/>