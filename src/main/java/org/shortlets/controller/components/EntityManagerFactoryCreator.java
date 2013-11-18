package org.shortlets.controller.components;

import javax.annotation.PostConstruct;
import javax.annotation.PreDestroy;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import br.com.caelum.vraptor.ioc.ApplicationScoped;
import br.com.caelum.vraptor.ioc.Component;
import br.com.caelum.vraptor.ioc.ComponentFactory;

/**
 * An example of how to create EntityManagerFactory's for your components
 * @author Lucas Cavalcanti
 *
 */
@Component
@ApplicationScoped
public class EntityManagerFactoryCreator implements ComponentFactory<EntityManagerFactory>{

    private EntityManagerFactory factory;

    @PostConstruct
    public void create() {
        factory = getEntityManagerFactory();
    }

    public EntityManagerFactory getInstance() {
        return factory;
    }

    @PreDestroy
    public void destroy() {
        factory.close();
    }

    protected EntityManagerFactory getEntityManagerFactory() {
        try{
            return Persistence.createEntityManagerFactory("shortlets-sgg-persistence");
        }catch(Exception e){
            e.printStackTrace();
            return null;
        }
    }
}
