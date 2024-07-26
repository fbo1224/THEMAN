package com.the.man.product.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.the.man.product.model.service.ProductService;
import com.the.man.product.model.vo.Product;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class ProductController {
	
	
	private ProductService productService;
	
	@GetMapping("padding")
	public String padding() {
		return "product/padding";
	}
	
	@GetMapping("productUproad")
	public String productUproad() {
		return "product/productUproad";
	}
	
	public String saveFile(MultipartFile upfile, HttpSession session) {
	    String originName = upfile.getOriginalFilename();
	    String ext = originName.substring(originName.lastIndexOf("."));
	    String uuid = UUID.randomUUID().toString(); // UUID 생성
	    String changeName = uuid + ext; // UUID와 파일 확장자를 결합하여 고유한 파일 이름 생성
	    String savePath = session.getServletContext().getRealPath("/resources/eventFile/");
	    
	    try {
	        upfile.transferTo(new File(savePath + changeName));
	    } catch (IllegalStateException e) {
	        e.printStackTrace();
	    } catch (IOException e) {
	        e.printStackTrace();
	    }
	    return "resources/eventFile/" + changeName;
	}
	
	
	
	@PostMapping("/insert")
	public String insert(@ModelAttribute Product product,
					     @RequestParam("upfiles1") MultipartFile[] upfiles1,
					     @RequestParam("upfiles2") MultipartFile[] upfiles2,
					     HttpSession session, Model model) {
		
		productService.insert(product);
		int eventNo = event.getEventNo();
		
		if(eventNo > 0) {
			List<MultipartFile> allFiles = new ArrayList<MultipartFile>();
			
			for(MultipartFile file : upfiles1) {
				if(!file.isEmpty()) {
					allFiles.add(file);
				}
			}
			
			for(MultipartFile file : upfiles2) {
				if(!file.isEmpty()) {
					allFiles.add(file);
				}
			}
			
			for(int i = 0; i < allFiles.size(); i++) {
				MultipartFile upfile = allFiles.get(i);
				String originName = upfile.getOriginalFilename();
				String changeName = saveFile(upfile, session);
				
				EventImg eventImg = new EventImg();
				eventImg.setEventNo(eventNo);
				eventImg.setOriginName(originName);
				eventImg.setChangeName(changeName);
				
				if(i < upfiles1.length) {
					eventImg.setFileLevel(1);
				} else {
					eventImg.setFileLevel(2);
				}
				
				eventService.insertImg(eventImg);
			}
			session.setAttribute("alertMsg", "성공");
			return "redirect:/event";
		} else {
			model.addAttribute("errorMsg", "실패");
			return "common/errorPage";
		}
	}
	
	
	
	

}
