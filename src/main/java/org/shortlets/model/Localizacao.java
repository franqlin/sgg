/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package org.shortlets.model;

import java.io.Serializable;
import java.util.Collection;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author franqlin
 */
@Entity
@Table(name = "LOCALIZACAO")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Localizacao.findAll", query = "SELECT l FROM Localizacao l"),
    @NamedQuery(name = "Localizacao.findById", query = "SELECT l FROM Localizacao l WHERE l.id = :id"),
    @NamedQuery(name = "Localizacao.findByDescricao", query = "SELECT l FROM Localizacao l WHERE l.descricao = :descricao")})
public class Localizacao implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "ID")
    private Integer id;
    @Column(name = "DESCRICAO")
    private String descricao;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "idLocalizacao")
    private Collection<Geladeira> geladeiraCollection;

    public Localizacao() {
    }

    public Localizacao(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    @XmlTransient
    public Collection<Geladeira> getGeladeiraCollection() {
        return geladeiraCollection;
    }

    public void setGeladeiraCollection(Collection<Geladeira> geladeiraCollection) {
        this.geladeiraCollection = geladeiraCollection;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Localizacao)) {
            return false;
        }
        Localizacao other = (Localizacao) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "org.shortlets.model.Localizacao[ id=" + id + " ]";
    }
    
}
