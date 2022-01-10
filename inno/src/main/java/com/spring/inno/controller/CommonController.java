package com.spring.inno.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.spring.inno.command.ContactRegistCommand;
import com.spring.inno.dto.ContactVO;
import com.spring.inno.dto.MemberVO;
import com.spring.inno.service.ContactService;
import com.spring.inno.service.MemberService;

@Controller
public class CommonController {

	@Autowired
	private MemberService memberService;

	@Autowired
	private ContactService contactService;
	
	@RequestMapping("/")
	public String index() throws SQLException {
		String url = "index/main";

		return url;
	}

	@RequestMapping(value = "/common/loginForm", method = RequestMethod.GET)
	public String loginForm(HttpServletResponse response) {
		String url = "/common/loginForm";

		return url;
	}

	@RequestMapping(value = "/common/login", method = RequestMethod.POST)
	public String login(String id, String pwd, HttpServletRequest request, HttpSession session, RedirectAttributes rttr)
			throws Exception {
		String url = "redirect:/";

		session = request.getSession();

		MemberVO member = new MemberVO();
		member.setMem_mail(id);
		member.setMem_pwd(pwd);

		MemberVO login = memberService.login(member);

		if (login == null) {
			session.setAttribute("loginUser", null);
			rttr.addFlashAttribute("msg", false);
		} else {
			session.setAttribute("loginUser", login);
			rttr.addFlashAttribute("msg", true);
		}

//	memberService.lo
//	try {
////		memberService.login(id, pwd);
////		
////		session.setAttribute("loginUser", memberService.getMember(id));
//	}
////	catch (NotFoundIDException | InvalidPasswordException e) {
////		rttr.addFlashAttribute("message",e.getMessage());
////		url="redirect:/common/loginForm.do";
////		
//	} catch (SQLException e) {
//		e.printStackTrace();
//		throw e;
//	}

		return url;
	}

	@RequestMapping(value = "/common/logout", method = RequestMethod.GET)
	public String logout(HttpSession session, RedirectAttributes rttr) {
		String url = "redirect:/";
		session.invalidate();

		rttr.addFlashAttribute("from", "logout");

		return url;
	}

	
//	@RequestMapping("/getFile")
//	public String getFile(Model model) throws Exception{
//		String url ="downloadFile";
////		String url="index/main2";
//		String savedPath = "c:/test";
//		String fileName = "test.pdf";
//		
//		
//		System.out.println(url);
//		
//		model.addAttribute("savedPath", savedPath);
//		model.addAttribute("fileName", fileName);
//		
//		return url;
//	}
	
	//파일 다운로드
	@RequestMapping("/fileDown")
	public void fileDownload(HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException{
		String path = "c:/test";
		String fileName = "InnovationT.pdf";
		System.out.println("testON!!!");
		try {
			String browser = request.getHeader("User-Agent");
			if(browser.contains("MSIE") || browser.contains("Trident") || browser.contains("Chrome")) {
				fileName = URLEncoder.encode(fileName, "UTF-8").replaceAll("\\+", "%20");
			}else {
				fileName = new String(fileName.getBytes("UTF-8"),"ISO-8859-1");
			}
		} catch (Exception e) {
			System.out.println("ㅠㅠ");
			}
		
		String realPath = path + "/" +fileName;
		System.out.println(realPath);
		File file = new File(realPath);
		
		if(!file.exists()) {
			return;
		}
		
		response.setContentType("aplication/octer-stream");
		response.setHeader("Content-Transfer-Encoding", "binary;");
		response.setHeader("Content-Disposition", "attachment; fileName=\""+fileName+"\"");
		
		try {
			OutputStream os = response.getOutputStream();
			FileInputStream fis = new FileInputStream(realPath);
			
			   int ncount = 0;
	            byte[] bytes = new byte[512];
	 
	            while ((ncount = fis.read(bytes)) != -1 ) {
	                os.write(bytes, 0, ncount);
	            }
	            fis.close();
	            os.close();
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
	
	
	@RequestMapping("/contact")
	public String contact() throws Exception{
		String url = "contact/main";
//		String url = "index/main2";

		return url;
	}
	
	@RequestMapping("/contact/regist")
	public String regist(ContactRegistCommand regReq,HttpServletRequest request,RedirectAttributes rttr) throws Exception{
		String url = "redirect:/contact";
		
		ContactVO contact = regReq.toContactVO();
		
		contactService.insert(contact);
		
		rttr.addFlashAttribute("from","regist");
		
		return url;
	}
	
	@RequestMapping("/about")
	public String about() throws Exception{
		String url = "about/main";
		
		return url;
	}
}
