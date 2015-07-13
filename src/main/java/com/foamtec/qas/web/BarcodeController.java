package com.foamtec.qas.web;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.ui.Model;

@Controller
@RequestMapping("/barcode")
public class BarcodeController {

    @RequestMapping(value = "/delta", produces = "text/html")
    public String bootstrapDelta(Model uiModel) {
        return "Barcode/delta";
    }

    @RequestMapping(value = "/other", produces = "text/html")
    public String bootstrapOther(Model uiModel) {
        return "Barcode/other";
    }
}
