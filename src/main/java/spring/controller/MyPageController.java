package spring.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.siot.IamportRestClient.IamportClient;

import spring.dao.MemberDao;
import spring.dao.OrderDao;
import spring.service.ManageService;
import spring.vo.AuthInfo;
import spring.vo.Login;
import spring.vo.Member;
import spring.vo.Order;
import spring.vo.RegisterRequest;

@Controller
public class MyPageController {


	@Autowired
	MemberDao dao;

	@Autowired
	private ManageService manageService;

	public void setManageService(ManageService manageService) {
		this.manageService = manageService;
	}
	
	private OrderDao odao;

	public void setDao(OrderDao odao) {
		this.odao = odao;
	}
	
	private IamportClient api;
	
	public MyPageController() {
		this.api = new IamportClient("5478353111638089","38c701ccf0c5e1bb14f091d942224863eebfa6b285a8195735b0eaae973d6339abf549d563d49cf8");
	}
	
	//留덉씠�럹�씠吏� �뿰寃�
	 @RequestMapping(value="/mypage/mypage/{member_number}",method=RequestMethod.GET)
		public String myPage(@PathVariable("member_number") Long member_number, Model model) {
		 
			Member memVo = manageService.myPage(member_number);
			
			model.addAttribute("member", memVo);
			
			return "mypage/mypage";
		}
	 
	//愿�由ъ옄 �럹�씠吏� �뿰寃�
		 @RequestMapping(value="/admin/admin/{member_number}",method=RequestMethod.GET)
			public String myPageAdmin(@PathVariable("member_number") Long member_number, Model model) {
			 
				Member memVo = manageService.myPage(member_number);
				
				model.addAttribute("member", memVo);
				
				return "admin/admin";
			}
		 
	 
	//�쉶�썝�젙蹂� �닔�젙 �뤌 �뿰寃�
	 @RequestMapping(value="/mypage/modify/{member_number}",method=RequestMethod.GET)
		public String modifyForm(@PathVariable("member_number") Long member_number, Model model) {
		 
			Member memVo = manageService.myPage(member_number);
			
			model.addAttribute("member", memVo);
			
			return "mypage/modify";
		}

		 @RequestMapping(value="/mypage/modifyPwd/{member_number}",method=RequestMethod.GET)
			public String modifyPwdForm(@PathVariable("member_number") Long member_number, RegisterRequest regReq, Model model) {
			 
				Member memVo = manageService.myPage(member_number);
				
				model.addAttribute("member", memVo);
				model.addAttribute("modifyPwd", new RegisterRequest());
				
				return "mypage/modifyPwd";
			}
		 

		 @RequestMapping(value="/mypage/modifyPwd/modifying/{member_number}",method=RequestMethod.POST)
			public String modifyPwd(@PathVariable("member_number") Long member_number, RegisterRequest regReq,  HttpServletResponse response, Model model, HttpSession session) throws IOException {
			 	response.setContentType("text/html;charset=utf-8");
				PrintWriter out = response.getWriter();
			 	String pwd = regReq.getPwd();
			 	String member_pwd = manageService.pwdFind(member_number);
			 	
				if(pwd != member_pwd) {
					
					out.println("<script>");
					out.println("alert('현재 비밀번호가 일치않습니다.');");
					out.println("history.go(-1);");
					out.println("</script>");
					out.close();
					
				}
				
				manageService.pwdModify(member_number,regReq);
				Member memVo = dao.selectByMemberNum(member_number);
				model.addAttribute("member", memVo);
				
				return "redirect:/mypage/mypage/{member_number}";
			}
		 
		

		 @RequestMapping(value="/mypage/modify/{member_number}",method=RequestMethod.POST)
			public String modifyForm2(@PathVariable("member_number") Long member_number, Model model) {
			 
				Member memVo = manageService.myPage(member_number);
				model.addAttribute("member", memVo);
				return "/";
			}
		 

		
	    
		 @RequestMapping(value = "/admin/orderStatus/{msg}", method = RequestMethod.GET)
			public String orderStatusMsgG(@PathVariable("msg") String msg, HttpServletRequest request, Model model) {
			 	
			 	String _sectionOne = request.getParameter("sectionOne");
				String _pageNumOne = request.getParameter("pageNumOne");
				String _sectionTwo = request.getParameter("sectionTwo");
				String _pageNumTwo = request.getParameter("pageNumTwo");
				
				int sectionOne = Integer.parseInt((_sectionOne==null)?"1":_sectionOne);
				int pageNumOne = Integer.parseInt((_pageNumOne==null)?"1":_pageNumOne);
				int sectionTwo = Integer.parseInt((_sectionTwo==null)?"1":_sectionTwo);
				int pageNumTwo = Integer.parseInt((_pageNumTwo==null)?"1":_pageNumTwo);		 
			 
			 
				List<Order> orderwaitList = odao.orderwaitList(sectionOne,pageNumOne);
				List<Order> deliveryCompleteList = odao.deliveryCompleteList(sectionTwo,pageNumTwo);
				
				int totalCntOne = odao.orderwaitCnt();
				int totalCntTwo = odao.deliveryCompleteCnt();
				
				model.addAttribute("orderwaitList", orderwaitList);
				model.addAttribute("totalCntOne", totalCntOne);
				model.addAttribute("sectionOne", sectionOne);
				model.addAttribute("pageNumOne", pageNumOne);
				model.addAttribute("deliveryCompleteList", deliveryCompleteList);
				model.addAttribute("totalCntTwo", totalCntTwo);
				model.addAttribute("sectionTwo", sectionTwo);
				model.addAttribute("pageNumTwo", pageNumTwo);
				model.addAttribute("msg", msg);
				
				return "admin/ordercheck";
			}
		 
		 @RequestMapping(value = "/admin/orderStatus", method = RequestMethod.GET)
			public String orderStatusG(HttpServletRequest request, Model model) {
				
			 
			 	String _sectionOne = request.getParameter("sectionOne");
				String _pageNumOne = request.getParameter("pageNumOne");
				String _sectionTwo = request.getParameter("sectionTwo");
				String _pageNumTwo = request.getParameter("pageNumTwo");
				
				int sectionOne = Integer.parseInt((_sectionOne==null)?"1":_sectionOne);
				int pageNumOne = Integer.parseInt((_pageNumOne==null)?"1":_pageNumOne);
				int sectionTwo = Integer.parseInt((_sectionTwo==null)?"1":_sectionTwo);
				int pageNumTwo = Integer.parseInt((_pageNumTwo==null)?"1":_pageNumTwo);
				
				List<Order> orderwaitList = odao.orderwaitList(sectionOne,pageNumOne);
				List<Order> deliveryCompleteList = odao.deliveryCompleteList(sectionTwo,pageNumTwo);
				
				int totalCntOne = odao.orderwaitCnt();
				int totalCntTwo = odao.deliveryCompleteCnt();
			 
				
				model.addAttribute("orderwaitList", orderwaitList);
				model.addAttribute("totalCntOne", totalCntOne);
				model.addAttribute("sectionOne", sectionOne);
				model.addAttribute("pageNumOne", pageNumOne);
				model.addAttribute("deliveryCompleteList", deliveryCompleteList);
				model.addAttribute("totalCntTwo", totalCntTwo);
				model.addAttribute("sectionTwo", sectionTwo);
				model.addAttribute("pageNumTwo", pageNumTwo);
				return "admin/ordercheck";
			}

		 @RequestMapping(value = "/admin/delivery/{orderNum}", method = RequestMethod.GET)
		 public String deliveryG(@PathVariable("orderNum") int orderNum,Model model) {
				
				odao.delivery(orderNum);
				
				return "redirect:/admin/orderStatus";
		}
		 
		 @RequestMapping(value = "/mypage/orderStatus/{msg}", method = RequestMethod.GET)
			public String memOrderStatusMsgG(@PathVariable("msg") String msg, Model model,HttpSession session, HttpServletRequest request) {
			 
			 	String _section = request.getParameter("section");
				String _pageNum = request.getParameter("pageNum");
				
				int section = Integer.parseInt((_section==null)?"1":_section);
				int pageNum = Integer.parseInt((_pageNum==null)?"1":_pageNum);
			 
			 	AuthInfo authinfo = (AuthInfo) session.getAttribute("authInfo");
			 	int member_number = (int)authinfo.getMember_number();
				List<Order> info = odao.selectOrderinfo(member_number,section,pageNum);
				int totalCnt = odao.selectOrderCnt(member_number);
				
				model.addAttribute("totalCnt", totalCnt);
				model.addAttribute("section", section);
				model.addAttribute("pageNum", pageNum);
				model.addAttribute("info", info);
				model.addAttribute("msg", msg);
				
				return "mypage/ordercheck";
		}
		 
		 @RequestMapping(value = "/mypage/orderStatus", method = RequestMethod.GET)
			public String memOrderStatusG(Model model,HttpSession session, HttpServletRequest request) {
			 
			 	String _section = request.getParameter("section");
				String _pageNum = request.getParameter("pageNum");
				
				int section = Integer.parseInt((_section==null)?"1":_section);
				int pageNum = Integer.parseInt((_pageNum==null)?"1":_pageNum);
				
			 	AuthInfo authinfo = (AuthInfo) session.getAttribute("authInfo");
				int member_number = (int)authinfo.getMember_number();
				List<Order> info = odao.selectOrderinfo(member_number,section,pageNum);
				
				int totalCnt = odao.selectOrderCnt(member_number);
				
				model.addAttribute("totalCnt", totalCnt);
				model.addAttribute("section", section);
				model.addAttribute("pageNum", pageNum);
				model.addAttribute("info", info);
				
				return "mypage/ordercheck";
		}
	
}
