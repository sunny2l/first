package com.bdqn.controller;
import com.bdqn.entity.User;
import com.bdqn.service.UserService;    
import org.springframework.stereotype.Controller;  
import org.springframework.web.bind.annotation.RequestMapping; 
import javax.annotation.Resource;  
import javax.servlet.http.HttpServletRequest;  
import org.springframework.web.bind.annotation.*;
import org.springframework.ui.Model;  
@Controller
public class IndexController {
@Resource  
    private UserService userService; 
   @RequestMapping("/")
    public String pageIndex(){
    return "index";
    }
    @RequestMapping("/login")
    public String login(Model model,@RequestParam("username") String username,@RequestParam("password") String password){
    User user=userService.getByUsername(username);
    if(user!=null && user.getUserpassword().equals(password)){
     model.addAttribute("user", user); 
     return "test/main_index"; 
    }else
    return "redirect:/";
    }
    
    @RequestMapping(value = "/logout")
    public String logout() {
        return "redirect:/";
    }
    
    @RequestMapping(value = "/content")
    public String content() {
        return "test/myindex";
    }
    @RequestMapping(value = "/home")
    public String home() {
        return "test/main_index";
    }
}
