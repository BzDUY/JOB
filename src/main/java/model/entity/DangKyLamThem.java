package model.entity;

import Validator.ViecLamConstraint;
import javax.persistence.*;

@Entity
public class DangKyLamThem {
    @Id
    @Column(name = "MaDK", nullable = false, length = 100)
    private String maDK;

    @Column(name = "MaNV", length = 50)
    private String maNV;

    @Column(name = "HoVaTen", length = 100)
    private String hoVaTen;

    @Column(name = "GioiTinh", length = 50)
    private String gioiTinh;

    @Column(name = "CapBac")
    private Integer capBac;
    
    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "MaVL")
    private ViecLam maVL;

    @Column(name = "SoNgayCong")
    private Integer soNgayCong;

    @Column(name = "TongTien")
    private float tongTien;

    public String getMaDK() {
        return maDK;
    }

    public void setMaDK(String maDK) {
        this.maDK = maDK;
    }

    public String getMaNV() {
        return maNV;
    }

    public void setMaNV(String maNV) {
        this.maNV = maNV;
    }

    public String getHoVaTen() {
        return hoVaTen;
    }

    public void setHoVaTen(String hoVaTen) {
        this.hoVaTen = hoVaTen;
    }

    public String getGioiTinh() {
        return gioiTinh;
    }

    public void setGioiTinh(String gioiTinh) {
        this.gioiTinh = gioiTinh;
    }

    public Integer getCapBac() {
        return capBac;
    }

    public void setCapBac(Integer capBac) {
        this.capBac = capBac;
    }

    public ViecLam getMaVL() {
        return maVL;
    }

    public void setMaVL(ViecLam maVL) {
        this.maVL = maVL;
    }

    public Integer getSoNgayCong() {
        return soNgayCong;
    }

    public void setSoNgayCong(Integer soNgayCong) {
        this.soNgayCong = soNgayCong;
    }

    public float getTongTien() {
        return tongTien;
    }

    public void setTongTien(float tongTien) {
        this.tongTien = tongTien;
    }

}