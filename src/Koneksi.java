/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author hilmi, faizah dan desta
 */
import java.sql.Connection;
import java.sql.DriverManager;
import javax.swing.JOptionPane;
public class Koneksi {
    public static Connection koneksi;
      
       public static Connection bukaKoneksi() {
        try {
            
            String url = "jdbc:mysql://localhost:3306/db_fitplus";
            String user = "root";      // Standar XAMPP
            String pass = "";          // Standar XAMPP (KOSONG)

            Class.forName("com.mysql.cj.jdbc.Driver");
            koneksi = DriverManager.getConnection(url, user, pass);
            
            return koneksi;
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, "Koneksi Gagal: " + e.getMessage());
        }
        return null;
    }

    public static void main(String[] args) {
        bukaKoneksi();
    }
}
