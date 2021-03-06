package spring.controller;



import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import spring.dao.MemberDao;
import spring.exception.AlreadyExistingEmailException;
import spring.exception.AlreadyExistingMemberException;
import spring.exception.MemberDeactivateAccount;
import spring.service.MemberRegisterService;
import spring.vo.RegisterRequest;

@Controller
public class MemberRegisterController {
	
	
	@Autowired
	MemberDao dao;

	@Autowired
	private MemberRegisterService  memberRegisterService;

	public void setMemberRegisterService(MemberRegisterService memberRegisterService) {
		this.memberRegisterService = memberRegisterService;
	}
	
	
	//폼으로 연결
	@RequestMapping(value="/member/join")
	public String registerForm(Model model) {
	
		model.addAttribute("formData", new RegisterRequest()); 
		
		return "member/join";
	}
	
	//닉네임 중복체크 ajax
	@RequestMapping(value = "/nameCheck", method = RequestMethod.POST) 
	@ResponseBody
	public int nameCheck(@RequestParam("member_nickname") String member_nickname) { 
		return memberRegisterService.nameCheck(member_nickname); 
	}
	
	//아이디 중복체크 ajax
	@RequestMapping(value = "/idCheck", method = RequestMethod.POST) 
	@ResponseBody
	public int idCheck(@RequestParam("member_id") String member_id) { 
		return memberRegisterService.idCheck(member_id); 
	}



	@RequestMapping(value="/member/register", method=RequestMethod.POST)
	public String register(Model model, RegisterRequest regReq,Errors errors,HttpServletResponse response) throws IOException {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		if(!regReq.isPasswordEqualToConfirmPassword()) {
			
			out.println("<script>");
			out.println("alert('비밀번호가 일치하지않습니다.');");
			out.println("history.go(-1);");
			out.println("</script>");
			out.close();
			
			return "member/join";
		}
		
		try {
			memberRegisterService.regist(regReq);
		
		}catch(AlreadyExistingMemberException e) {

			out.println("<script>");
			out.println("alert('중복된 아이디입니다.');");
			out.println("history.go(-1);");
			out.println("</script>");
			out.close();
			
			return "member/join";
		}catch(AlreadyExistingEmailException e) {
			
			out.println("<script>");
			out.println("alert('입력하신 이메일로 가입되어있는 계정이 존재합니다.');");
			out.println("history.go(-1);");
			out.println("</script>");
			out.close();
			return "member/join";
		}
		catch(MemberDeactivateAccount e) {
			out.println("<script>");
			out.println("alert('탈퇴계정 이메일로는 재가입이 불가능합니다.');");
			out.println("history.go(-1);");
			out.println("</script>");
			out.close();
			return "member/join";
		}
		
		return "redirect:/";
		}
	
}
