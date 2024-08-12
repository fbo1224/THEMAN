package com.the.man.event.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class EventController {
	
	@GetMapping("eventList")
	public String eventPage() {
		return "event/eventList";
	}

}
