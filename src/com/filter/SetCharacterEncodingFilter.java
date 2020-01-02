package com.filter;

import javax.servlet.*;
import java.io.IOException;

public class SetCharacterEncodingFilter implements Filter {

	protected String encoding = null;  //定义默认转换字符编码
	protected FilterConfig filterConfig = null;  //初始化FilterConfig对象
	protected boolean ignore = true; //忽略客户端指定的字符编码

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		this.encoding = null;
		this.filterConfig = null;
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response,
						 FilterChain chain) throws IOException, ServletException {
		// TODO Auto-generated method stub
		// 选择和设置要使用的字符编码
		if (ignore || (request.getCharacterEncoding() == null)) {
			String encoding = selectEncoding(request);
			if (encoding != null)
				request.setCharacterEncoding(encoding);
		}

		// 将控制传递给下一个过滤器
		chain.doFilter(request, response);

	}

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		// TODO Auto-generated method stub
		this.filterConfig = filterConfig;
		this.encoding = filterConfig.getInitParameter("encoding");
		String value = filterConfig.getInitParameter("ignore");
		if (value == null)
			this.ignore = true;
		else if (value.equalsIgnoreCase("true"))
			this.ignore = true;
		else if (value.equalsIgnoreCase("yes"))
			this.ignore = true;
		else
			this.ignore = false;

	}

	//根据当前请求和或过滤器初始化参数的特征，选择要使用的适当字符编码。如果不应设置字符编码，则返回null
	protected String selectEncoding(ServletRequest request) {
		return (this.encoding);
	}
}
