/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package control;

import dal.DBContext;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import model.Account;

public class AccountDAO extends DBContext {

    public Account checkLogin(String userName, String password) {
        try {

            String sql = "select * from Account where Username=? and Password=?";
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, userName);
            st.setString(2, password);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                Account a = new Account(rs.getInt(1), rs.getString(2), rs.getString(3),rs.getString(4), rs.getInt(5), rs.getInt(6));

                return a;
            }

        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public Account checkLoginAdmin(String userName) {
        try {
            String sql = "SELECT * from Account where Username = 'admin'";
            PreparedStatement st = connection.prepareStatement(sql);
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }
}
