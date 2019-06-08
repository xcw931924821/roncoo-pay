<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getScheme() + "://" + request.getServerName()
            + ":" + request.getServerPort() + request.getContextPath()
            + "/";
    session.setAttribute("path", path);
%>
<html>
<head>
    <title>条码支付</title>
    <script type="text/javascript" src="${path}js/jquery-1.7.2.min.js"></script>
    <link href="${path}pay_files/pay.css" rel="stylesheet" type="text/css">
</head>
<body>
<div class="wrap_header">
    <div class="header clearfix">
        <div class="logo_panel clearfix">
            <div class="logo fl"><img src="${path}pay_files/logo.png" alt="logo"></div>
            <div class="lg_txt">| 龙果支付体验平台</div>
        </div>
        <div class="fr tip_panel">
            <div class="txt">欢迎使用龙果支付付款</div>
            <a href="">常见问题</a>
        </div>
    </div>
</div>

<div class="cashier_desk pay_ment">
    <div class="bd">
        <ul class="payment">
            <li>
                <form action="${path}roncooPay/f2fPay" method="post">
                    <img src="${path}images/pay.png" alt="支付宝支付"/>
                    <br/>
                    <label>请输入支付宝支付授权码:</label><br/>
                    <input type="text" size="30" name="authCode" style="line-height: 25px;">
                    <input type="hidden" name="productName" value="支付宝支付产品测试"/>
                    <input type="hidden" name="orderPrice" value="0.1"/>
                    <input type="hidden" name="payWayCode" value="ALIPAY">
                    <input type="hidden" name="remark" value="支付宝支付备注信息"/>
                    <p class="pay_btn">
                        <input type="submit" value="0.1元支付体验"/>
                    </p>
                </form>
            </li>
            <li>
                <form action="${path}roncooPay/f2fPay" method="post">
                    <img src="${path}images/weixin.png" alt="微信支付"/>
                    <br/>
                    <label>请输入微信支付授权码:</label><br/>
                    <input type="text" size="30" name="authCode" style="line-height: 25px;">
                    <input type="hidden" name="productName" value="微信支付产品测试"/>
                    <input type="hidden" name="orderPrice" value="0.1"/>
                    <input type="hidden" name="payWayCode" value="WEIXIN">
                    <input type="hidden" name="remark" value="微信支付备注信息"/>
                    <p class="pay_btn">
                        <input type="submit" value="0.1元支付体验"/>
                    </p>
                </form>
            </li>
        </ul>
    </div>
</div>

<div class="footer w100">
    f2fpay.jsp
</div>
</body>
</html>