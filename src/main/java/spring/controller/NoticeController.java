package spring.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import spring.dao.NoticeDao;
import spring.vo.AuthInfo;
import spring.vo.Notice;

@Controller
@RequestMapping("/notice")
public class NoticeController {

	private NoticeDao dao;
	public void setDao(NoticeDao dao) {
		this.dao = dao;
	}
	
	@RequestMapping(value="/main",method=RequestMethod.GET)
	public String noticeG(Model model,HttpSession session, HttpServletRequest request) {
		
		
		List<Notice> m = dao.noticeAll();
		model.addAttribute("Notice",m);
		

		return "NOTICE/notice";
	}
	
	@RequestMapping(value="/main",method=RequestMethod.POST)
	public String noticeP(Model model,HttpSession session, HttpServletRequest request) {
		
		
		String noticeSearch = request.getParameter("Search");
		List<Notice> m = dao.noticeSearch(noticeSearch);
		
		model.addAttribute("Notice",m);
		
		return "NOTICE/search";
	}
	
	@RequestMapping(value="/detail/{num}",method=RequestMethod.GET)
	public String noticeDetail(@PathVariable("num") Long num,Model model) {
		
		Notice m = dao.detailView(num);
		model.addAttribute("Notice",m);
		
		return "NOTICE/noticeDetail";
	}
	
	@RequestMapping(value="/insert",method=RequestMethod.GET)
	public String noticeInsertG(Model model) {
		
		
		model.addAttribute("formData", new Notice());
		
		return "NOTICE/noticeInsert";
	}
	
	@RequestMapping(value="/insert",method=RequestMethod.POST)
	public String noticeInsertP(Notice notice,Model model) {
				
		dao.insertNotice(notice);
		
		return "redirect:/notice/main";
	}
	
	@RequestMapping(value="/update/{num}",method=RequestMethod.GET)
	public String noticeUpdateG(@PathVariable("num") Long num,Model model) {
		
		Notice m = dao.detailView(num);
		model.addAttribute("formData",m);
		
		return "NOTICE/noticeupdate";
	}
	
	@RequestMapping(value="/update/{num}",method=RequestMethod.POST)
	public String noticeUpdateP(@PathVariable("num") Long num,Notice notice,Model model) {
		notice.setNOTICE_NUMBER(num);
		dao.updateNotice(notice);
		
		return "redirect:/notice/main";
	}
	
	@RequestMapping(value="/delete/{num}")
	public String noticeDelete(@PathVariable("num") Long num) {
		
		dao.deleteNotice(num);
		
		return "redirect:/notice/main";
	}
	
	@RequestMapping(value="/faq",method=RequestMethod.GET)
	public String faqG(HttpServletRequest request,Model model) {
		
		
		return "NOTICE/faq";
	}
	
	
}
