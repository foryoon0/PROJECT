package spring.service;

import spring.dao.MemberDao;
import spring.exception.IdPasswordNotMatchingException;
import spring.vo.AuthInfo;
import spring.vo.Member;


public class AuthService { //로그인

	private MemberDao dao;



	public void setDao(MemberDao dao) {
		this.dao = dao;
	}

	public AuthInfo authenticate(String member_id, String member_pwd) {
		Member member = dao.selectById(member_id);
		
		if(member==null) {
			throw new IdPasswordNotMatchingException();
		}
		if(!member.getMember_pwd().equals(member_pwd)) {
			throw new IdPasswordNotMatchingException();
		}
		
		return new AuthInfo(member.getMember_number(),member.getMember_id(),member.getMember_name());
		
	}

	
}
