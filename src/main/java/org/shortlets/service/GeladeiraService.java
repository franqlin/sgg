package org.shortlets.service;

import br.com.caelum.vraptor.ioc.ApplicationScoped;
import br.com.caelum.vraptor.ioc.Component;
import javax.persistence.EntityManager;
import org.shortlets.model.Geladeira;


@Component
@ApplicationScoped
public class GeladeiraService extends AbstractService<Geladeira> {
    private EntityManager em;
    @Override
    protected EntityManager getEntityManager() {
        return em;
    }
    public  void  setEntityManager(EntityManager _em) {
         this.em=_em;
    }
    
    public GeladeiraService() {
        super(Geladeira.class);
    }
    
}
