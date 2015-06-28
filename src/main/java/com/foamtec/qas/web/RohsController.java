package com.foamtec.qas.web;
import com.foamtec.qas.domain.Rohs;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.ui.Model;

@RooWebJson(jsonObject = Rohs.class)
@Controller
@RequestMapping("/rohses")
@RooWebScaffold(path = "rohses", formBackingObject = Rohs.class)
public class RohsController {

	@RequestMapping(value = "/create", produces = "text/html")
    public String bootstrapCreate(Model uiModel) {
        return "RoHs/create";
    }

}
