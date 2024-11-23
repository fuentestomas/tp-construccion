package com.tp.tp_construccion.repositories;

import com.tp.tp_construccion.models.Task;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


@Repository
public interface TaskRepository extends JpaRepository<Task,Long> {
}