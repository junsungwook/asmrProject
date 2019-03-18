package com.asmr.app;

import java.util.Locale;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.asmr.model.SaveDTO;
import com.asmr.model.UserDTO;
import com.asmr.service.AsmrService;



/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@Inject
	private AsmrService mService;
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);	
		return "home";
	}
	
	/* 회원가입창 */
	/* 회원가입 */
	@PostMapping("memberInsert")
	@ResponseBody
	public void memberInsert(UserDTO user) {
		System.out.println(user.getId() +" - "+ user.getName() +" - "+ user.getPassword() +" - "+ user.getPhone());
		mService.userInsert(user);
	}
	/* 회원가입시 중복체크 */
	@GetMapping("idCheck")
	/* responseBody를 안쓰면 ok.jsp를 찾아간다 */
	@ResponseBody
	public String idCheck(@RequestParam("userid")String userid) {
		return mService.idCheck(userid).trim();
	}

	/* 로그인 */
	@PostMapping("login")
	@ResponseBody
	public String login(UserDTO user, HttpSession session) {
		System.out.println(user.getId() +" - "+ user.getPassword());
		String str = mService.login(user).trim();
		if(str.equals("ok")) {
		
			session.setAttribute("id", user.getId());
			//System.out.println(session.getAttribute("id")+"");
		}
		return str;
	}
	/* 로그아웃 */
	@GetMapping("logout")
	public String logout(HttpSession session) {
		
		//System.out.println(session.getAttribute("id")+"");
		session.removeAttribute("id");
		return "home";
	}
	
	/* 음악배열저장 */
	@GetMapping("sounds")
	@ResponseBody
	public String soundsave(@RequestParam("sound")String sound,HttpSession session) {
		sound = sound.substring(0,sound.length()-1);
		System.out.println("컨트롤러 사운드 :" + sound);
		String username = (String) session.getAttribute("id");
		SaveDTO save = new SaveDTO();
		save.setSound(sound);
		save.setUsername(username);
		mService.soundsave(save);
		return "1";
	}
	
	/* 음악배열불러오기 */
	@GetMapping("load")
	@ResponseBody
	public String soundLoad(HttpSession session) {
		String username = (String) session.getAttribute("id");
		SaveDTO loaded = mService.soundLoad(username);
		if(loaded==null) {
			return "저장된 값이 없습니다";
		}
		else {
			return loaded.getSound();
		}
	}

}
