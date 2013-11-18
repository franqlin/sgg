/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package org.shortlets.model;

import java.io.Serializable;
import java.util.Collection;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
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
@Table(name = "GELADEIRA")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Geladeira.findAll", query = "SELECT g FROM Geladeira g"),
    @NamedQuery(name = "Geladeira.findById", query = "SELECT g FROM Geladeira g WHERE g.id = :id"),
    @NamedQuery(name = "Geladeira.findByDescricao", query = "SELECT g FROM Geladeira g WHERE g.descricao = :descricao")})
public class Geladeira implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "ID")
    private Integer id;
    @Column(name = "DESCRICAO")
    private String descricao;
    @JoinColumn(name = "ID_LOCALIZACAO", referencedColumnName = "ID")
    @ManyToOne(optional = false)
    private Localizacao idLocalizacao;
    @OneToMany(mappedBy = "idGeladeira")
    private Collection<Produto> produtoCollection;

    public Geladeira() {
    }

    public Geladeira(Integer id) {
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

    public Localizacao getIdLocalizacao() {
        return idLocalizacao;
    }

    public void setIdLocalizacao(Localizacao idLocalizacao) {
        this.idLocalizacao = idLocalizacao;
    }

    @XmlTransient
    public Collection<Produto> getProdutoCollection() {
        return produtoCollection;
    }

    public void setProdutoCollection(Collection<Produto> produtoCollection) {
        this.produtoCollection = produtoCollection;
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
        if (!(object instanceof Geladeira)) {
            return false;
        }
        Geladeira other = (Geladeira) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "org.shortlets.model.Geladeira[ id=" + id + " ]";
    }
    
}
