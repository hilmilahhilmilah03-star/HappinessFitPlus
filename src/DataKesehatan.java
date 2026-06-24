/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author hilmi
 */
public class DataKesehatan {
    protected String nama;
    
    public DataKesehatan(String nama){
        this.nama = nama;
    }
    
    public void tampilInfo(){
        System.out.println("Data Kesehatan: " + nama);
    }
}
