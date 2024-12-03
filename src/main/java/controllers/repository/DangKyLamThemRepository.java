/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controllers.repository;

import java.util.List;
import model.entity.DangKyLamThem;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

/**
 *
 * @author ASUS
 */
@Repository
public interface DangKyLamThemRepository extends JpaRepository<DangKyLamThem, String> {

    @Query(value = "SELECT * FROM DangKyLamThem Where HoVaTen Like :searchKey", nativeQuery = true)
    public List<DangKyLamThem> searchByName(@Param("searchKey") String searchKey);

    @Query(value = "SELECT * FROM DangKyLamThem Where MaVL Like :searchKey", nativeQuery = true)
    public List<DangKyLamThem> searchByMaCV(@Param("searchKey") String searchKey);


    @Query(value = "SELECT * FROM DangKyLamThem Where HoVaTen LIKE :searchKey1 AND MaVL LIKE :searchKey2", nativeQuery = true)
    public List<DangKyLamThem> searchByNameAndMaCV(@Param("searchKey1") String searchKey1, @Param("searchKey2") String searchKey2);

}
