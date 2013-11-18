package org.shortlets.controller.components;

import javax.annotation.PostConstruct;
import javax.annotation.PreDestroy;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;

import br.com.caelum.vraptor.ioc.Component;
import br.com.caelum.vraptor.ioc.ComponentFactory;
import br.com.caelum.vraptor.ioc.RequestScoped;

/**
 * An {@link EntityManager} creator, that creates an instance for each requests.
 * @author Lucas Cavalcanti
 */
@Component
@RequestScoped
public class EntityManagerCreator implements ComponentFactory<EntityManager>{

    private final EntityManagerFactory factory;
    private EntityManager entityManager;

    public EntityManagerCreator(EntityManagerFactory factory) {
        this.factory = factory;
    }

    @PostConstruct
    public void create() {
        entityManager = factory.createEntityManager();
    }

    public EntityManager getInstance() {
        return entityManager;
    }

    @PreDestroy
    public void destroy() {
        entityManager.close();
    }

}
