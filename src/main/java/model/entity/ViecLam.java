package model.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

import java.time.LocalDate;

@Entity
public class ViecLam {
    @Id
    @Column(name = "MaVL", nullable = false, length = 100)
    private String maVL;

    @Column(name = "Mota", length = 500)
    private String mota;

    @Column(name = "DuAn", length = 1000)
    private String duAn;

    @Column(name = "NgonNgu", length = 50)
    private String ngonNgu;

    @Column(name = "NgayBD")
    private LocalDate ngayBD;

    @Column(name = "NgayKT")
    private LocalDate ngayKT;

    @Column(name = "TongNgayCong")
    private Integer tongNgayCong;

    @Column(name = "TrangThai", length = 50)
    private String trangThai;

    public String getMaVL() {
        return maVL;
    }

    public void setMaVL(String maVL) {
        this.maVL = maVL;
    }

    public String getMota() {
        return mota;
    }

    public void setMota(String mota) {
        this.mota = mota;
    }

    public String getDuAn() {
        return duAn;
    }

    public void setDuAn(String duAn) {
        this.duAn = duAn;
    }

    public String getNgonNgu() {
        return ngonNgu;
    }

    public void setNgonNgu(String ngonNgu) {
        this.ngonNgu = ngonNgu;
    }

    public LocalDate getNgayBD() {
        return ngayBD;
    }

    public void setNgayBD(LocalDate ngayBD) {
        this.ngayBD = ngayBD;
    }

    public LocalDate getNgayKT() {
        return ngayKT;
    }

    public void setNgayKT(LocalDate ngayKT) {
        this.ngayKT = ngayKT;
    }

    public Integer getTongNgayCong() {
        return tongNgayCong;
    }

    public void setTongNgayCong(Integer tongNgayCong) {
        this.tongNgayCong = tongNgayCong;
    }

    public String getTrangThai() {
        return trangThai;
    }

    public void setTrangThai(String trangThai) {
        this.trangThai = trangThai;
    }

}