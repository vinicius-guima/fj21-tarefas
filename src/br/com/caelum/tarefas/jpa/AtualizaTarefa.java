package br.com.caelum.tarefas.jpa;

import java.util.Calendar;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import br.com.caelum.tarefas.modelo.Tarefa;

public class AtualizaTarefa {

	
	public static void main(String[] args) {
		
		Tarefa tarefa = new Tarefa();
		tarefa.setId(3L);
		tarefa.setDescricao("Sempre estudar!");
		tarefa.setFinalizado(false);
		tarefa.setDataFinalizacao(Calendar.getInstance());
		
		EntityManagerFactory factory = Persistence.createEntityManagerFactory("tarefas");
		EntityManager manager = factory.createEntityManager();
		
		manager.getTransaction().begin();
		manager.merge(tarefa);
		manager.getTransaction().commit();
		
		System.out.println("atualizando tarefa com Id = " + tarefa.getId());
		
	}
}
