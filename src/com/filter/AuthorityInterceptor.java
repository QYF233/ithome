package com.filter;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

import java.util.Map;

public class AuthorityInterceptor extends AbstractInterceptor {
    //拦截Action处理的拦截方法
    @Override
    public String intercept(ActionInvocation actionInvocation) throws Exception {
        //取得请求相关的ActionContext
        ActionContext ctx = actionInvocation.getInvocationContext();
        Map session = ctx.getSession();
        //取出名为user的session属性
        String name = (String)session.get("name");
        String power = (String)session.get("power");
        if (name !=null && power.equals("1")){
            return  actionInvocation.invoke();
        }

        //如果没有登录，将服务器提示设置成一个HttpServletRequest属性
        ctx.put("tip","您还没有登录，请输入scott,tiger登录系统");
        //直接返回login的逻辑视图
        return "login";
    }

}
