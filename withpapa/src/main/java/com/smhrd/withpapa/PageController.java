package com.smhrd.withpapa;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class PageController {

   @RequestMapping(value="/start", method=RequestMethod.GET)
   public String start() {
      return "start";
   }
   
   
   @RequestMapping(value="/searchresult", method=RequestMethod.GET)
   public String searchResult() {
      return "searchresult";
   }
   
   
}