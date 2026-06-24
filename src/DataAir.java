/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author hilmi
 */
public class DataAir extends DataKesehatan{
    public DataAir(String nama){
        super(nama);
    }
    
    @Override
    public void tampilInfo(){
        super.tampilInfo();
        System.out.println("Data Kebutuhan Air");
    }
}
