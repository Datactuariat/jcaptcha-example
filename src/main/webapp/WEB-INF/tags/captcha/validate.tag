<%@ tag import="com.octo.captcha.module.servlet.image.SimpleImageCaptchaServlet" %>
<%@ tag pageEncoding="UTF-8" body-content="empty" %>
<%@ attribute name="value" required="true" rtexprvalue="true" %>
<%
    boolean isValid = SimpleImageCaptchaServlet.validateResponse(request, value);
    application.log(request.toString());
    out.print(isValid);
%>
