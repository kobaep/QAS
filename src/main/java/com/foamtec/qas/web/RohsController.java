package com.foamtec.qas.web;
import com.foamtec.qas.domain.Rohs;
import org.springframework.roo.addon.web.mvc.controller.json.RooWebJson;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import org.springframework.http.ResponseEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseBody;
import java.util.Iterator;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.bind.annotation.RequestMethod;
import java.io.File;
import java.io.FileOutputStream;

@RooWebJson(jsonObject = Rohs.class)
@Controller
@RequestMapping("/rohses")
@RooWebScaffold(path = "rohses", formBackingObject = Rohs.class)
public class RohsController {

	@RequestMapping(value = "/create", produces = "text/html")
    public String bootstrapCreate(Model uiModel) {
        return "RoHs/create";
    }

    @RequestMapping(value = "/uploadspecfile", method = RequestMethod.POST , produces = "text/html")
    public @ResponseBody ResponseEntity<String> pdfSpecImport(MultipartRequest multipartrequest, HttpServletResponse response, Model uiModel) throws IOException {
    	HttpHeaders headers = new HttpHeaders();
        headers.add("Content-Type", "application/json");
        MultipartFile file   =  multipartrequest.getFile("specFile");
        File convFile = new File("../fileUpload/"+file.getOriginalFilename());
        convFile.createNewFile(); 
	    FileOutputStream fos = new FileOutputStream(convFile);
	    fos.write(file.getBytes());
	    fos.close();
        return new ResponseEntity<String>("Duplicated File Name", headers, HttpStatus.OK);
    }
}
