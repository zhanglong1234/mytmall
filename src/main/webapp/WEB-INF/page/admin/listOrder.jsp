<%--
  Created by IntelliJ IDEA.
  User: warframe
  Date: 2017/6/8
  Time: 8:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="../include/adminHeader.jsp"%>
<%@include file="../include/adminNav.jsp"%>


<div class="listDiv">
    <!--面包树结构的标题导航-->
    <h1 class="label label-info">订单管理</h1>

    <table class="table tale-hover table-bordered table-striped table-condensed">
        <!--表头信息-->
        <thead>
        <tr class="listTableTH">
            <th>ID</th>
            <th>状态</th>
            <th>金额</th>
            <th>商品数量</th>
            <th>买家名称</th>
            <th>创建时间</th>
            <th>支付时间</th>
            <th>发货时间</th>
            <th>确认收货时间</th>
            <th>操作</th>
        </tr>
        </thead>
        <!--具体信息-->
        <tbody>
        <c:forEach items="${orders}" var="order">
            <tr class="orderListTableContentTR">
                <td>${order.id}</td>
                <td>${order.statusDesc}</td>
                <td></td>
                <td></td>
                <td>${order.receiver}</td>
                <td><fmt:formatDate value="${order.createDate}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
                <td><fmt:formatDate value="${order.payDate}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
                <td><fmt:formatDate value="${order.deliveryDate}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
                <td><fmt:formatDate value="${order.confirmDate}" pattern="yyyy-MM-dd HH:mm:ss"/></td>

                <td>
                    <button class="btn btn-primary btn-xs">查看详情</button>
                    <button class="btn btn-primary btn-xs">发货</button>
                </td>

            </tr>

        </c:forEach>

        </tbody>
    </table>


    <%@ include file="../include/adminPage.jsp"%>
</div>


<%@include file="../include/adminFooter.jsp"%>