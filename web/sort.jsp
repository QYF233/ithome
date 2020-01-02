<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%@ taglib uri="/struts-tags" prefix="s" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

<body>
<s:bean name="action.SortWeight" var="sortref"></s:bean>
<s:sort comparator="sortref" source="listUserInfo" var="newListUserInfo">
    <s:iterator var="userInfoRef" value="#attr.newListUserInfo">
        idЃК<s:property value="#userInfoRef.id"/>
        БъЬтЃК<s:property value="#userInfoRef.title"/>
        <br/>
    </s:iterator>
</s:sort>
</body>
</html>
