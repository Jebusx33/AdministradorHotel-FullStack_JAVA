/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Persistencia;

import Logica.CheckDias;
import Persistencia.exceptions.NonexistentEntityException;
import java.io.Serializable;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Query;
import javax.persistence.EntityNotFoundException;
import javax.persistence.Persistence;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

/**
 *
 * @author Jesus Arias
 */
public class CheckDiasJpaController implements Serializable {

    public CheckDiasJpaController(EntityManagerFactory emf) {
        this.emf = emf;
    }
    private EntityManagerFactory emf = null;
    
 public CheckDiasJpaController() {
        emf = Persistence.createEntityManagerFactory("Arias_JesusGabriel_tpoFinalPU");
    }
    public EntityManager getEntityManager() {
        return emf.createEntityManager();
    }

    public void create(CheckDias checkDias) {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            em.persist(checkDias);
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void edit(CheckDias checkDias) throws NonexistentEntityException, Exception {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            checkDias = em.merge(checkDias);
            em.getTransaction().commit();
        } catch (Exception ex) {
            String msg = ex.getLocalizedMessage();
            if (msg == null || msg.length() == 0) {
                int id = checkDias.getId_check();
                if (findCheckDias(id) == null) {
                    throw new NonexistentEntityException("The checkDias with id " + id + " no longer exists.");
                }
            }
            throw ex;
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void destroy(int id) throws NonexistentEntityException {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            CheckDias checkDias;
            try {
                checkDias = em.getReference(CheckDias.class, id);
                checkDias.getId_check();
            } catch (EntityNotFoundException enfe) {
                throw new NonexistentEntityException("The checkDias with id " + id + " no longer exists.", enfe);
            }
            em.remove(checkDias);
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public List<CheckDias> findCheckDiasEntities() {
        return findCheckDiasEntities(true, -1, -1);
    }

    public List<CheckDias> findCheckDiasEntities(int maxResults, int firstResult) {
        return findCheckDiasEntities(false, maxResults, firstResult);
    }

    private List<CheckDias> findCheckDiasEntities(boolean all, int maxResults, int firstResult) {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            cq.select(cq.from(CheckDias.class));
            Query q = em.createQuery(cq);
            if (!all) {
                q.setMaxResults(maxResults);
                q.setFirstResult(firstResult);
            }
            return q.getResultList();
        } finally {
            em.close();
        }
    }

    public CheckDias findCheckDias(int id) {
        EntityManager em = getEntityManager();
        try {
            return em.find(CheckDias.class, id);
        } finally {
            em.close();
        }
    }

    public int getCheckDiasCount() {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            Root<CheckDias> rt = cq.from(CheckDias.class);
            cq.select(em.getCriteriaBuilder().count(rt));
            Query q = em.createQuery(cq);
            return ((Long) q.getSingleResult()).intValue();
        } finally {
            em.close();
        }
    }
    
}
