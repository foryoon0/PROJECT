package spring.intercepter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import spring.vo.AuthInfo;

public class AdminCheckIntercepter extends HandlerInterceptorAdapter{

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		// ��Ʈ�ѷ��� ����Ǳ� �� �����Ǵ� ��� => �α��� ����
		
		HttpSession session = request.getSession();
		
		if(session != null) {
			AuthInfo authInfo = (AuthInfo)session.getAttribute("authInfo");
			if(authInfo.getMember_number() == 10022) {
				//���ǰ��� �ִٸ�
				return true;
			}
		}
		//���ǰ��� ������
		response.sendRedirect(request.getContextPath()+"/");
		return false;
	}
	
}
