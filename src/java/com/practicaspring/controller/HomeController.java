package com.practicaspring.controller;

import com.practicaspring.models.Conectar;
import java.util.List;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {
    
    private JdbcTemplate jdbTemplate;

    public HomeController() {
        Conectar con = new Conectar();
        this.jdbTemplate = new JdbcTemplate(con.conectar());
    }
    
    @RequestMapping("home.htm")
    public ModelAndView home(){
        ModelAndView mav = new ModelAndView();
        String sql = "SELECT * FROM usuarios";
        List datos = this.jdbTemplate.queryForList(sql);
        mav.addObject("datos",datos);
        mav.setViewName("home");
        return mav;
    }
}

