package com.foamtec.qas.web;
import com.foamtec.qas.domain.DocumentHistory;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;

@RooWebJson(jsonObject = DocumentHistory.class)
@Controller
@RequestMapping("/documenthistorys")
@RooWebScaffold(path = "documenthistorys", formBackingObject = DocumentHistory.class)
public class DocumentHistoryController {
}
