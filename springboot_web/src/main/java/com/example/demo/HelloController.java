package com.example.demo;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Date;

@RestController
public class HelloController {

    private static final String template = "Hello world! The time is %s";

    @RequestMapping("/")
    public String hello() {
        return String.format(template, new Date().toString());
    }
}
