package com.lkl.controller;

import com.lkl.pojo.Admin;
import com.lkl.pojo.LoginForm;
import com.lkl.service.AdminService;
import com.lkl.service.StudentService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("/system")
public class SystemController {

    @Autowired
    private AdminService adminService;
    @Autowired
    private StudentService studentService;

    @RequestMapping("/goLogin")
    public String goLogin(){
        System.out.println("here");
        return "system/login";
    }

    @RequestMapping(value = "/goRegister" ,method=RequestMethod.GET)
    public String goRegister(){
        return "system/register";
    }

    @RequestMapping("/goSystemMainView")
    public String goSystemMainView(){
        return "system/main";
    }

    @RequestMapping("/goIntro")
    public String goIntro(){
        return "system/intro";
    }

    @RequestMapping("/logout")
    public void loginOut(HttpServletRequest request, HttpServletResponse response) {
        request.getSession().removeAttribute("user");
        request.getSession().removeAttribute("userType");
        request.getSession().removeAttribute("userName");

        //注销后重定向到登录页面
        try {
            response.sendRedirect("../index.jsp");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @RequestMapping("/login")
    @ResponseBody
    public Map<String, Object> login(@RequestBody LoginForm loginForm, HttpServletRequest request) {

        //存储返回给页面的对象数据
        Map<String, Object> result = new HashMap<>();
        switch (loginForm.getUserType()){
            //管理员
            case 1:
                try {
                    Admin admin = adminService.login(loginForm);//验证账户和密码是否存在
                    if (admin != null) {
                        HttpSession session = request.getSession(); //将用户信息存储到Session
                        session.setAttribute("user", admin);
                        session.setAttribute("userType", loginForm.getUserType());
                        session.setAttribute("userName",admin.getName());
                        result.put("success", true);
                        return result;
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                    result.put("success", false);
                    result.put("msg", "登录失败!!");
                    return result;
                }
                break;
           //以下还可以补充
        }
        //登录失败
        result.put("success", false);
        result.put("msg", "用户名或密码错误!");
        return result;
    }


}
