/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controllers.service;

import controllers.repository.ViecLamRepository;
import model.entity.ViecLam;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author ASUS
 */
@Service
public class ViecLamService {

    @Autowired
    private ViecLamRepository viecLamRepository;

    public ViecLam findById(String id) {
        
        return viecLamRepository.findById(id).orElse(null);
    }
    
}
