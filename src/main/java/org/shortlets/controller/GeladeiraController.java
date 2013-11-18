/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package org.shortlets.controller;

import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import java.util.List;
import javax.persistence.EntityManager;
import org.shortlets.model.Geladeira;
import org.shortlets.model.Localizacao;
import org.shortlets.service.GeladeiraService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.annotation.Secured;



/**
 *
 * @author franqlin
 */
@Resource
public class GeladeiraController {
    //@Autowired
    private EntityManager manager;
   // @Autowired
    private Result result;
    //@Autowired
    private GeladeiraService service;
    

    //@Autowired
   
    public GeladeiraController( Result result, EntityManager manager, GeladeiraService _service) {
       
        this.result = result;
        this.manager = manager;
        this.service = _service;
        service.setEntityManager(manager);
    }
    
   // @Secured("ROLE_ADMIN")
    @Get("/geladeira/all")
    public void listar(){
        List lista = service.findAll();
        result.include("lista",lista);
    }
   // @Secured("ROLE_ADMIN")
    @Get("/geladeira/novo")
    public void criar(){
        Geladeira g = new Geladeira();
        g.setDescricao("nova geladeira");
        Localizacao l = new Localizacao();
        l.setId(1);
        g.setIdLocalizacao(l);
        try {
            service.create(g);
        } catch (Exception e) {
            e.printStackTrace();
        }
        result.forwardTo(GeladeiraController.class).listar();
    }
    
    
}
