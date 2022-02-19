package abc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class WebController {
   @RequestMapping(value = "/confirmation", method = RequestMethod.GET)
   public String index() {
      return "confirmation";
   }
   @RequestMapping(value = "/redirect", method = RequestMethod.GET)
   public String redirect() {
      return "redirect:home";
   }
   @RequestMapping(value = "/home", method = RequestMethod.GET)
   public String finalPage() {
      return "final";
   }
}