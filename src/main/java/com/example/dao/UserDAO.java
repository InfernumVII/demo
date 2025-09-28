package com.example.dao;

import com.example.model.User;
import java.util.*;
import java.util.concurrent.atomic.AtomicInteger;

public class UserDAO {
    private static final Map<Integer, User> users = new HashMap<>();
    private static final AtomicInteger idCounter = new AtomicInteger(1);
    
    static {
        // Добавляем тестовые данные
        users.put(1, new User(1, "Иван Иванов", "ivan@example.com"));
        users.put(2, new User(2, "Петр Петров", "petr@example.com"));
        idCounter.set(3);
    }
    
    public List<User> getAllUsers() {
        return new ArrayList<>(users.values());
    }
    
    public User getUserById(int id) {
        return users.get(id);
    }
    
    public void addUser(User user) {
        int id = idCounter.getAndIncrement();
        user.setId(id);
        users.put(id, user);
    }
    
    public void updateUser(User user) {
        users.put(user.getId(), user);
    }
    
    public void deleteUser(int id) {
        users.remove(id);
    }
}