package yukikom.com.kotlin_sandbox.controller

import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.RestController

@RestController
@RequestMapping("/api")
class HelloController {
    @GetMapping("/hello")
    fun getHello(): Map<String, String> {
        return mapOf("message" to "Hello, World!")
    }
}