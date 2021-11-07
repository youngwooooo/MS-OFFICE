package kr.or.ddit.reference.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ReferController {
	@GetMapping("/refer/list")
	public String indexLTE() {
		return "reference/referList";
	}
}
