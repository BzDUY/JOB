/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controllers.service;

import controllers.repository.DangKyLamThemRepository;
import java.util.ArrayList;
import java.util.List;
import model.entity.DangKyLamThem;
import model.entity.ViecLam;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author ASUS
 */
@Service
public class DangKyLamThemService {

    @Autowired
    private DangKyLamThemRepository dangKyLamThemRepository;

    @Autowired
    private ViecLamService viecLamService;

    public DangKyLamThem save(DangKyLamThem dangKyLamThem) {
        return dangKyLamThemRepository.save(dangKyLamThem);
    }

    public List<DangKyLamThem> getAll() {

        return dangKyLamThemRepository.findAll();
    }

    public List<DangKyLamThem> getAllNotClosed() {
        List<DangKyLamThem> list = dangKyLamThemRepository.findAll();
        List<DangKyLamThem> listNotClose = new ArrayList<>();
        ViecLam vl;
        for (DangKyLamThem dk : list) {
            vl = viecLamService.findById(dk.getMaVL().getMaVL());

            if (!vl.getTrangThai().equals("Closed")) {

                System.out.println(dk.getHoVaTen());
                listNotClose.add(dk);
            }
        }
        return listNotClose;
    }

    public List<DangKyLamThem> searchByName(String key) {

        return dangKyLamThemRepository.searchByName("%" + key + "%");

    }

    public List<DangKyLamThem> searchByMaCV(String key) {

        return dangKyLamThemRepository.searchByMaCV("%" + key + "%");

    }

    public List<DangKyLamThem> searchByNameAndMaCV(String key1, String key2) {

        return dangKyLamThemRepository.searchByNameAndMaCV("%" + key1 + "%", "%" + key2 + "%");

    }
    
    public DangKyLamThem findById(String id) {
    
        return dangKyLamThemRepository.findById(id).orElse(null);
    }

}
