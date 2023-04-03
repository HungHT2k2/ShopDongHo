/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Account;
import model.Category;
import model.Product;

public class DAO extends DBContext {

    public List<Product> getAllProduct() {
        List<Product> list = new ArrayList<>();
        String query = "select * from Products";
        try {
            PreparedStatement st = connection.prepareStatement(query);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getInt(9),
                        rs.getString(10),
                        rs.getString(11)
                ));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public List<Category> getAllCategory() {
        List<Category> list = new ArrayList<>();
        String query = "select * from category";
        try {
            PreparedStatement st = connection.prepareStatement(query);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                list.add(new Category(rs.getInt(1),
                        rs.getString(2)
                ));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public List<Product> getProductByCategoryID(String categoryID) {
        List<Product> list = new ArrayList<>();
        String query = "select * from Products\n"
                + "where categoryID = ?";
        try {
            PreparedStatement st = connection.prepareStatement(query);
            st.setString(1, categoryID);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getInt(9),
                        rs.getString(10),
                        rs.getString(11)
                ));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public Product getProductByID(String ProductsID) {
        String query = "select * from Products\n"
                + "where ProductsID = ?";
        try {
            PreparedStatement st = connection.prepareStatement(query);
            st.setString(1, ProductsID);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                return new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getInt(9),
                        rs.getString(10),
                        rs.getString(11)
                );
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public List<Product> searchByName(String txtSearch) {
        List<Product> list = new ArrayList<>();
        String query = "select * from Products\n"
                + "where [name] like ?";
        try {
            PreparedStatement st = connection.prepareStatement(query);
            st.setString(1, "%" + txtSearch + "%");
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getInt(9),
                        rs.getString(10),
                        rs.getString(11)
                ));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public Account checkLogin(String userName, String password) {
        try {
            String sql = "SELECT [Username]\n"
                    + "      ,[Password]\n"
                    + "  FROM [PRJ].[dbo].[Account]";
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, userName);
            st.setString(2, password);
            ResultSet rs = st.executeQuery();

            if (rs.next()) {
                Account a = new Account(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getInt(5), rs.getInt(6));
                return a;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public Account checkAccountExit(String userName) {
        try {

            String sql = "select * from Account where UserName =?";
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, userName);

            ResultSet rs = st.executeQuery();

            if (rs.next()) {
                Account a = new Account(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getInt(5), rs.getInt(6));

                return a;
            }

        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public void signup(String userName, String password) {
        String query = "INSERT INTO Account\n"
                + "VALUES (?,?,0,0);";
        try {
            PreparedStatement st = connection.prepareStatement(query);
            st.setString(1, userName);
            st.setString(2, password);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public List<Product> getProductBySellID(int id) {
        List<Product> list = new ArrayList<>();
        String query = "select * from Products\n"
                + "where sell_ID = ?";
        try {
            PreparedStatement st = connection.prepareStatement(query);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getInt(9),
                        rs.getString(10),
                        rs.getString(11)
                ));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public void deleteProduct(String pid) {
        String query = "delete from Products\n"
                + "where ProductsID = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setString(1, pid);
            ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void insertProduct(String name, String image, String price,
            String title, String description, String category, String manhinh, String timepin, String hdh, String hang, int sid) {
        String query = "INSERT [dbo].[Products] \n"
                + "([Name],[image], [Price], [Title], [Description], [categoryID], [manhinh], [timepin], [hdh], [hang], [sell_ID])\n"
                //  Name,image,Price,Title,Description,categoryID,manhinh,timepin,hdh,hang,sell_ID
                + "VALUES(?,?,?,?,?,?,?,?,?,?,?)";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, image);
            ps.setString(3, price);
            ps.setString(4, title);
            ps.setString(5, description);
            ps.setString(6, category);
            ps.setString(7, manhinh);
            ps.setString(8, timepin);
            ps.setString(9, hdh);
            ps.setString(10, hang);
            ps.setInt(11, sid);
            ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void editProduct(String name, String image, String price,
            String title, String description, String category, String manhinh, String timepin, String hdh, String hang, String pid) {
        String query = "  UPDATE Products\n"
                + "  set [Name] =?,\n"
                + "  [image]=?,\n"
                + "      Price=?,\n"
                + "      Title=?,\n"
                + "      [Description]=?,\n"
                + "      categoryID=?,\n"
                + "      manhinh=?,\n"
                + "      timepin=?,\n"
                + "      hdh=?,\n"
                + "      hang=?\n"
                + "	  where ProductsID=?";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, image);
            ps.setString(3, price);
            ps.setString(4, title);
            ps.setString(5, description);
            ps.setString(6, category);
            ps.setString(7, manhinh);
            ps.setString(8, timepin);
            ps.setString(9, hdh);
            ps.setString(10, hang);
            ps.setString(11, pid);
            ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public List<Account> getAccount(int id) {
        List<Account> list = new ArrayList<>();
        String query = "select * from Account where isAdmin <> ?";
        try {
            PreparedStatement st = connection.prepareStatement(query);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                list.add(new Account(rs.getInt(1),
                        rs.getString(2), rs.getString(3), rs.getString(4), rs.getInt(5), rs.getInt(6)
                ));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public void insertAccount(String name, String pass, String sell, String admin) {
        String query = "INSERT [dbo].[Account] \n"
                + "([Username],[Password], [isSell],[isAdmin])\n"
                //                ,[Username],[Password],[isSell],[isAdmin]
                + "VALUES(?,?,?,?)";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, pass);
            ps.setString(3, sell);
            ps.setString(4, admin);
            ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void deleteAcc(String pid) {
        String query = "delete from Account\n"
                + "where uID = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setString(1, pid);
            ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void editAcc(String name, String pass, String sell, String admin, String pid) {
        String query = "  UPDATE Account\n"
                + "  set [Username] =?,\n"
                + "  [Password]=?,\n"
                + "      isSell=?,\n"
                + "      isAdmin=?\n"
                + "	  where uID=?";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, pass);
            ps.setString(3, sell);
            ps.setString(4, admin);
            ps.setString(5, pid);
            ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public Account getAccountByID(String uID) {
        String query = "select * from Account\n"
                + "where uID = ?";
        try {
            PreparedStatement st = connection.prepareStatement(query);
            st.setString(1, uID);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getInt(5), rs.getInt(6)
                );
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public Product getProduct(String ProductsID) {
        String query = "select * from Products\n"
                + "where ProductsID = ?";
        try {
            PreparedStatement st = connection.prepareStatement(query);
            st.setString(1, ProductsID);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                return new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getInt(9),
                        rs.getString(10),
                        rs.getString(11)
                );
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public List<Product> getProductAsc() {
        List<Product> list = new ArrayList<>();
        String query = "SELECT * FROM Products\n"
                + "ORDER BY Price";
        try {
            PreparedStatement st = connection.prepareStatement(query);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getInt(9),
                        rs.getString(10),
                        rs.getString(11)
                ));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public List<Product> getProductDesc() {
        List<Product> list = new ArrayList<>();
        String query = "SELECT * FROM Products ORDER BY Price DESC";
        try {
            PreparedStatement st = connection.prepareStatement(query);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getInt(9),
                        rs.getString(10),
                        rs.getString(11)
                ));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public Account login(String user, String pass) {
        String sql = "select * from Account\n"
                + "where [Username] = ?\n"
                + "and [Password] = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, user);
            st.setString(2, pass);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1), rs.getString(2), rs.getString(3),rs.getString(4), rs.getInt(5), rs.getInt(6));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return null;
    }

    public void change(Account a) {
        String sql = "update Account\n"
                + "set [Password] = ?\n"
                + "where Username = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, a.getPassword());
            st.setString(2, a.getUserName());
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public List<Product> getProductByPrice(String a, String b) {
        List<Product> list = new ArrayList<>();
        String sql = "select * from Products\n"
                + " where Price between ? and ?  ";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, a);
            st.setString(2, b);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getInt(9),
                        rs.getString(10),
                        rs.getString(11)
                ));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public List<Product> getProductByPin(String a, String b) {
        List<Product> list = new ArrayList<>();
        String sql = "select * from Products\n"
                + " where timepin between ? and ?  ";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, a);
            st.setString(2, b);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getInt(9),
                        rs.getString(10),
                        rs.getString(11)
                ));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public List<Product> getProductTop4() {
        List<Product> list = new ArrayList<>();
        String sql = "select  Top 4*  from Products \n"
                + "order by ProductsID desc";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();

            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getInt(9),
                        rs.getString(10),
                        rs.getString(11)
                ));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public List<Product> getProductCheap() {
        List<Product> list = new ArrayList<>();
        String sql = "select  Top 3*  from Products \n"
                + "order by Price asc";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();

            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getInt(9),
                        rs.getString(10),
                        rs.getString(11)
                ));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public List<Product> getProductSortAsc() {
        List<Product> list = new ArrayList<>();
        String sql = "select  *  from Products \n"
                + "order by [Name] asc";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();

            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getInt(9),
                        rs.getString(10),
                        rs.getString(11)
                ));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public List<Product> getProductSortDesc() {
        List<Product> list = new ArrayList<>();
        String sql = "select  *  from Products \n"
                + "order by [Name] desc";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();

            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getInt(9),
                        rs.getString(10),
                        rs.getString(11)
                ));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }
}
