<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getScheme() + "://" + request.getServerName()
            + ":" + request.getServerPort() + request.getContextPath()
            + "/";
    session.setAttribute("path", path);
%>
<html>
<head>
    <title>扫码支付</title>
    <script type="text/javascript" src="${path}js/jquery-1.7.2.min.js"></script>
    <link href="${path}pay_files/pay.css" rel="stylesheet" type="text/css">
</head>
<body>
<div class="cashier_desk pay_ment">
    <div class="bd">
        <ul class="payment">
            <li style="margin-left: 20px;">
                <img src="${path}images/weixin.png" alt="微信支付"/>
                <form action="${path}roncooPay/scanPay" method="post">
                    <input type="hidden" name="productName" value="微信支付产品测试"/><br/>
                    <input type="hidden" name="orderPrice" value="0.1"/><br/>
                    <input type="hidden" name="payWayCode" value="WEIXIN">
                    <input type="hidden" name="remark" value="微信支付备注信息"/>
                    <p class="pay_btn">
                        <input type="submit" value="微信支付0.1元支付体验"/>
                    </p>
                </form>
            </li>
            <li style="margin-left: 20px;"><img src="${path}images/zhifubao.png" alt="支付宝支付"/>
                <form action="${path}roncooPay/scanPay" method="post">
                    <input type="hidden" name="productName" value="支付宝支付产品测试"/><br/>
                    <input type="hidden" name="orderPrice" value="0.1"/><br/>
                    <input type="hidden" name="payWayCode" value="ALIPAY">
                    <input type="hidden" name="remark" value="支付宝支付备注信息"/>
                    <p class="pay_btn">
                        <input type="submit" value="支付宝0.1元支付体验"/>
                    </p>
                </form>
            </li>
            <li style="margin-left: 20px;">
                <img src="${path}images/wangguan.png" alt="网关支付"/>
                <form action="${path}roncooPay/scanPay" method="post">
                    <input type="hidden" name="productName" value="网关支付产品测试"/><br/>
                    <input type="hidden" name="orderPrice" value="0.1"/><br/>
                    <input type="hidden" name="payWayCode" value="">
                    <input type="hidden" name="remark" value="网关支付备注信息"/>
                    <p class="pay_btn">
                        <input type="submit" value="网关支付0.1元支付体验"/>
                    </p>
                </form>
            </li>
            <li style="margin-left: 20px;">
                <img src="${path}images/beisao.png" alt="条码支付"/>
                <form action="${path}roncooPay/toF2FPay" method="post">
                    <br/><br/>
                    <p class="pay_btn">
                        <input type="submit" value="条码支付体验"/>
                    </p>
                </form>
            </li>
        </ul>
    </div>
</div>

<div class="footer w100">
    <div class="container">
          我demo使用
    </div>
</div>
</body>
</html>