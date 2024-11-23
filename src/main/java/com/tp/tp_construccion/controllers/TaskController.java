package com.tp.tp_construccion.controllers;

import com.tp.tp_construccion.repositories.TaskRepository;
import com.tp.tp_construccion.models.Task;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;


@Controller
public class TaskController {

    @Autowired
    private TaskRepository taskRepository;

    @GetMapping("/")
    public String home(Model model) {
        return "redirect:/all";
    }

    @GetMapping("/all")
    public String taskList(Model model) {
        model.addAttribute("tasks", taskRepository.findAll());
        return "tasklist"; 
    }

    @GetMapping("/task/{id}")
    public String getTask(@PathVariable Long id, Model model) {
        model.addAttribute("task", taskRepository.findById(id).orElse(null));
        return "task";
    }

    @GetMapping("/add")
    public String addTaskForm(Model model) {
        model.addAttribute("task", new Task());
        return "addtask"; 
    }

    @PostMapping("/add")
    public String addTask(@ModelAttribute Task task) {
        taskRepository.save(task);
        return "redirect:/all";
    }

    @GetMapping("/edit/{id}")
    public String editTaskForm(@PathVariable Long id, Model model) {
        model.addAttribute("task", taskRepository.findById(id).orElse(null));
        return "edittask"; 
    }

    @PostMapping("/edit/{id}")
    public String editTask(@ModelAttribute Task task) {
        taskRepository.save(task);
        return "redirect:/all";
    }

    @GetMapping("/delete/{id}")
    public String deleteTask(@PathVariable Long id) {
        taskRepository.deleteById(id);
        return "redirect:/all";

    }

    @GetMapping("/toggle/{id}")

    public String toggleTaskCompletion(@PathVariable Long id) {
        Task task = taskRepository.findById(id).orElse(null);
        if (task != null) {
            task.setCompleted(!task.isCompleted());
            taskRepository.save(task);
        }
        return "redirect:/all";
    }
}