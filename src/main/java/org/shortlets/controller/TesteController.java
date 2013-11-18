package org.shortlets.controller;

import java.util.List;
import javax.persistence.EntityManager;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import org.shortlets.model.Geladeira;
import org.shortlets.model.Localizacao;
import org.shortlets.service.GeladeiraService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.annotation.Secured;

@Resource
public class TesteController {
    
    //@Autowired
    private Result result;
    //@Autowired
    private EntityManager manager;
    //@Autowired
    private GeladeiraService gs = new GeladeiraService();    
    @Autowired 
    public TesteController( EntityManager manager) {
        this.manager = manager;
        
    }

    public void list() {        
        gs.setEntityManager(manager);
        List list = gs.findAll();
        result.include("listGeladeira", list);
    }

    @Secured("ROLE_ADMIN")
    public void criar() {
        gs.setEntityManager(manager);
        Geladeira g = new Geladeira();
        g.setDescricao("nova geladeira");
        Localizacao l = new Localizacao();
        l.setId(1);
        g.setIdLocalizacao(l);
        try {
            this.gs.create(g);
        } catch (Exception e) {
            e.printStackTrace();
        }
        result.forwardTo(TesteController.class).list();        
    }
}
