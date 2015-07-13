package com.foamtec.qas.web;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.ui.Model;

@Controller
@RequestMapping("/fastatus")
public class FaStatusController {

    @RequestMapping(value = "/status", produces = "text/html")
    public String bootstrapOther(Model uiModel) {
        return "FaStatus/status";
    }
}
