// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.foamtec.qas.web;

import com.foamtec.qas.domain.DocumentHistory;
import com.foamtec.qas.domain.Rohs;
import com.foamtec.qas.web.RohsController;
import java.io.UnsupportedEncodingException;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.util.UriUtils;
import org.springframework.web.util.WebUtils;

privileged aspect RohsController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String RohsController.create(@Valid Rohs rohs, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, rohs);
            return "rohses/create";
        }
        uiModel.asMap().clear();
        rohs.persist();
        return "redirect:/rohses/" + encodeUrlPathSegment(rohs.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String RohsController.createForm(Model uiModel) {
        populateEditForm(uiModel, new Rohs());
        return "rohses/create";
    }
    
    @RequestMapping(value = "/{id}", produces = "text/html")
    public String RohsController.show(@PathVariable("id") Long id, Model uiModel) {
        addDateTimeFormatPatterns(uiModel);
        uiModel.addAttribute("rohs", Rohs.findRohs(id));
        uiModel.addAttribute("itemId", id);
        return "rohses/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String RohsController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("rohses", Rohs.findRohsEntries(firstResult, sizeNo, sortFieldName, sortOrder));
            float nrOfPages = (float) Rohs.countRohses() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("rohses", Rohs.findAllRohses(sortFieldName, sortOrder));
        }
        addDateTimeFormatPatterns(uiModel);
        return "rohses/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String RohsController.update(@Valid Rohs rohs, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, rohs);
            return "rohses/update";
        }
        uiModel.asMap().clear();
        rohs.merge();
        return "redirect:/rohses/" + encodeUrlPathSegment(rohs.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{id}", params = "form", produces = "text/html")
    public String RohsController.updateForm(@PathVariable("id") Long id, Model uiModel) {
        populateEditForm(uiModel, Rohs.findRohs(id));
        return "rohses/update";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE, produces = "text/html")
    public String RohsController.delete(@PathVariable("id") Long id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        Rohs rohs = Rohs.findRohs(id);
        rohs.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/rohses";
    }
    
    void RohsController.addDateTimeFormatPatterns(Model uiModel) {
        uiModel.addAttribute("rohs_createddate_date_format", "dd/MM/yyyy");
        uiModel.addAttribute("rohs_updateddate_date_format", "dd/MM/yyyy");
        uiModel.addAttribute("rohs_startdate_date_format", "dd/MM/yyyy");
        uiModel.addAttribute("rohs_enddate_date_format", "dd/MM/yyyy");
    }
    
    void RohsController.populateEditForm(Model uiModel, Rohs rohs) {
        uiModel.addAttribute("rohs", rohs);
        addDateTimeFormatPatterns(uiModel);
        uiModel.addAttribute("documenthistorys", DocumentHistory.findAllDocumentHistorys());
    }
    
    String RohsController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
        String enc = httpServletRequest.getCharacterEncoding();
        if (enc == null) {
            enc = WebUtils.DEFAULT_CHARACTER_ENCODING;
        }
        try {
            pathSegment = UriUtils.encodePathSegment(pathSegment, enc);
        } catch (UnsupportedEncodingException uee) {}
        return pathSegment;
    }
    
}