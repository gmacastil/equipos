package com.lite.equipos.infraestructure;

import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/")
public class HCController {

    @GetMapping
    public String getHC() {
        return "Hello, World!";
    }
   
}
