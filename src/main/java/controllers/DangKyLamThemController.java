/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controllers;

import controllers.service.DangKyLamThemService;
import controllers.service.ViecLamService;
import java.util.ArrayList;
import java.util.List;
import javax.validation.Valid;
import model.entity.DangKyLamThem;
import model.entity.ViecLam;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

/**
 *
 * @author ASUS
 */
@Controller
@RequestMapping("/lamthem")
public class DangKyLamThemController {

    @Autowired
    private DangKyLamThemService dangKyLamThemService;

    @Autowired
    private ViecLamService viecLamService;

    @GetMapping("/add")
    public String create(Model model) {
        model.addAttribute("lamthem", new DangKyLamThem());
        return "createdangkylamthem";
    }

    @PostMapping("/create")
    public String addNewHopDong(@ModelAttribute(name = "hopdong") @Valid DangKyLamThem hopDong, BindingResult result, Model model) {
        if (result.hasErrors()) {
            return "/createdangkylamthem";
        }
        List<DangKyLamThem> listDangKy = dangKyLamThemService.getAll();
        if (listDangKy.size() == 0) {
            hopDong.setMaDK("DK001");
        } else {
            DangKyLamThem last = listDangKy.get(listDangKy.size() - 1);
            String ma = last.getMaDK().replaceAll("[^0-9]", "");
            int number = Integer.parseInt(ma);
            number++;
            String newMaXe = "DK" + String.format("%03d", number);
            hopDong.setMaDK(newMaXe);
        }

        ViecLam vc = viecLamService.findById(hopDong.getMaVL().getMaVL());
        if (vc == null) {
            model.addAttribute("error", "Khong ton tai viec lam trong he thong");
            model.addAttribute("lamthem", hopDong);

            return "/createdangkylamthem";
        }

        if (vc.getTrangThai().equals("Closed")) {

            model.addAttribute("error", "Viec lam dang chon da duoc dong");
            model.addAttribute("lamthem", hopDong);

            return "/createdangkylamthem";

        }

        dangKyLamThemService.save(tinhLuong(hopDong));

//        KhachHang kh = khachHangService.findById(hopDong.getMaKH().getId());
//
//        hopDongBaoHiemService.saveHopDong(tinhLuong(hopDong, kh));
//        System.out.println(hopDong.getMaKH());
        return "redirect:/lamthem/list";
    }

    @GetMapping("/list")
    public String listAll(Model model) {

        List<DangKyLamThem> list = dangKyLamThemService.getAllNotClosed();
        model.addAttribute("list", list);
        return "/listvieclam";

    }

    public DangKyLamThem tinhLuong(DangKyLamThem lam) {
        float luong = 0;
        int jobDay = lam.getSoNgayCong();
        if (lam.getCapBac() == 1) {
            luong = 500000 * jobDay;
        } else if (lam.getCapBac() == 2) {
            luong = 600000 * jobDay;
        } else if (lam.getCapBac() == 3) {
            luong = 700000 * jobDay;
        }
        ViecLam vl = viecLamService.findById(lam.getMaVL().getMaVL());

        if (vl.getNgonNgu().equals("COBOL") || vl.getNgonNgu().equals("RPG")) {

            luong = (float) (luong + (luong * 0.1));
        }

        lam.setTongTien(luong);
        return lam;
    }

    @GetMapping("/search")
    public String search(Model model,
            @RequestParam(name = "searchKey1") String searchKey1,
            @RequestParam(name = "searchKey2") String searchKey2) {

        List<DangKyLamThem> list = new ArrayList<>();
        if ((searchKey1.length() != 0) && (searchKey2.length() == 0)) {
            list = dangKyLamThemService.searchByName(searchKey1);
            model.addAttribute("searchKey1", searchKey1);
        } else if ((searchKey1.length() == 0) && (searchKey2.length() != 0)) {
            list = dangKyLamThemService.searchByName(searchKey2);
            model.addAttribute("searchKey2", searchKey2);
        } else if ((searchKey1.length() != 0) && (searchKey2.length() != 0)) {
            list = dangKyLamThemService.searchByNameAndMaCV(searchKey1, searchKey2);
            model.addAttribute("searchKey1", searchKey1);
            model.addAttribute("searchKey2", searchKey2);

        }
        model.addAttribute("list", list);

        return "/listvieclam";
    }

    @GetMapping("/edit/{id}")
    public String editUser(Model model, @PathVariable("id") String id) {
        DangKyLamThem dk = dangKyLamThemService.findById(id);
        //--------
        if (!model.containsAttribute("error")) {
            model.addAttribute("error", null); // Để tránh lỗi null trên JSP
        }
        //--- check lỗi nếu có lỗi thì bắn, còn ko thì thôi

        model.addAttribute("lamviec", dk);
//        model.addAttribute("userA", new User()); khi tạo thì bắn qua bên AttributeModel 1 cái như này để đón cái dữ liệu từ request bắn sang
        return "/editdangkylamthem";
    }

    @PostMapping("/update")
    public String updateUser(@ModelAttribute(name = "lamviec") @Valid DangKyLamThem hopdong, BindingResult result, RedirectAttributes redirectAttributes) {
        if (result.hasErrors()) {
            return "/lamthem/edit/" + hopdong.getMaDK();
        }

//        HopDongBaoHiem hdCu = hopDongBaoHiemService.findById(hopdong.getId());
        ViecLam vl = viecLamService.findById(hopdong.getMaVL().getMaVL());
        
        DangKyLamThem dkl = dangKyLamThemService.findById(hopdong.getMaDK());

        //-- Check lỗi
        if (dkl.getSoNgayCong() - hopdong.getSoNgayCong() < 0) {
            redirectAttributes.addFlashAttribute("error", "So ngay \n"
                    + "cong thay doi khong hop le");
 

            return "redirect:/lamthem/edit/" + hopdong.getMaDK();
        }
        dangKyLamThemService.save(tinhLuong(hopdong));

        //--
        return "redirect:/lamthem/list";
    }

}
