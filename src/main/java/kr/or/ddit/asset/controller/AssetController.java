package kr.or.ddit.asset.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/asset")
public class AssetController {
	
	@GetMapping("/home")
	public String assetHome() {
		return "asset/assetHome";
	}
	
	@GetMapping("/floor1")
	public String assetFloor1() {
		return "asset/assetFloor1";
	}
	
	@GetMapping("/floor2")
	public String assetFloor2() {
		return "asset/assetFloor2";
	}
	
	@GetMapping("/floor3")
	public String assetFloor3() {
		return "asset/assetFloor3";
	}
	
	@GetMapping("/floor4")
	public String assetFloor4() {
		return "asset/assetFloor4";
	}

	@GetMapping("/car")
	public String assetCar() {
		return "asset/assetCar";
	}
	
	@GetMapping("/carDetail")
	public String assetCarDetail() {
		return "asset/assetCarDetail";
	}
	
	@GetMapping("/detail")
	public String assetDetail() {
		return "asset/assetDetail";
	}
	
	@GetMapping("/create")
	public String assetCreate() {
		return "asset/assetCreate";
	}
	
	@GetMapping("/select")
	public String assetCalenderSelect() {
		return "asset/assetCalenderSelect";
	}
}
