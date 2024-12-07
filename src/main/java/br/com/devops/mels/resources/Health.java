package br.com.devops.mels.resources;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping
public class Health {

    @GetMapping(value = "/health")
    public ResponseEntity<String> health() {
        String status = "Status Ok";
        return ResponseEntity.ok(status);
    }
    

}
