<%--
  Created by IntelliJ IDEA.
  User: 17612
  Date: 2019/7/21
  Time: 14:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <base href="<%=basePath%>">
    <title>登录界面</title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<script language="JavaScript">
    function mylogin(){        <%//登录%>
        if(isNull(form1.Type.value)){
            alert("请选择身份！");
            return false;
        }
        else if(isNull(form1.Username.value)){
            alert("请输入账号！");
            return false;
        }
        else if(isNull(form1.Password.value)){
            alert("请输入密码");
            return false;
        }else{
            return true;
        }
    }
    function myzhuce()           <%//注册%>
    {
        if(isNull(form1.Type.value)){
            alert("请选择注册身份！");
            return false;
        }else{
            if(form1.Type.value=="3")     <%//如果注册的是用户%>
            {
                form2.action="user_zhuce.jsp";
            }else if(form1.Type.value=="2"){        <%//如果注册的是商家%>
                form2.action="merchant_zhuce.jsp";
            }else if(form1.Type.value=="1"){        <%//如果注册的是管理员%>
                form2.action="manager_zhuce.jsp";
            }
        }
    }
    function isNull(str)
    {
        if ( str == "" ) return true;
        var regu = "^[ ]+$";
        var re = new RegExp(regu);
        return re.test(str);
    }

</script>
<body>
<center>
    <h2><br><br><font color=#0000ff>请登录您的账号</font></h2>
</center>
<br/>
<form name="form1" id="form1" action="Login.action" method="post" onSubmit="return mylogin()">
    <table>

        <div>
            <div style="left: 300px; position: absolute; top: 150px;">登录账号 ：
                <input type="text"  name="Username" id="Username" value="" />
            </div>
            <div style="left: 300px; position: absolute; top: 200px;">登录密码 ：
                <input type="password"  name="Password" id="Password" value=""/>
            </div>

            <div style="left: 240px; position: absolute; top: 250px;">请选择登录或注册身份：
                <select name="Type" id="Type">
                    <option value="">请选择</option>
                    <option value="3">用户</option>
                    <option value="2">商家</option>
                    <option value="1">管理员</option>
                </select>
            </div>
            <div style="left: 330px; position: absolute; top: 340px;">
                <Input type="submit" name="button" id="button1" value="登录" >
            </div>
        </div>
    </table>
</form>

<form name="form2" id="form2" action="" method="post" onSubmit="return myzhuce()">
    <div style="left: 450px; position: absolute; top: 340px;">
        <Input type="submit" name="button" id="button2" value="注册">
    </div>
</form>
</body>
</html>
