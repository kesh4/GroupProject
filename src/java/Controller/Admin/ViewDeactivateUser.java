/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Admin;

import Controller.DaoImpl.ClientDaoImpl;
import Controller.DaoImpl.PhotographerDaoImp;
import DB.DB;
import Model.Client;
import Model.Dao.ClientDao;
import Model.Dao.PhotographerDao;
import Model.Photographer;
import com.google.gson.Gson;
import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Madusha
 */
public class ViewDeactivateUser extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String userid = request.getParameter("userid");
        System.out.println(userid);
        try {
//            ResultSet client = DB.search("SELECT * FROM Client where Client_Id = '"+ userid +"' ");
//            ResultSet photographer = DB.search("SELECT * FROM Photographer where Photographer_Id = '"+ userid +"'");
            ClientDao clientDao = new ClientDaoImpl();
            PhotographerDao photographerDao = new PhotographerDaoImp();
            String clientId = null;
            

            if (userid==clientId) {
                
                clientDao.getClientbyId(userid);
                Client c = new Client();
//                c.setClientId(client.getString("Client_Id"));
//                c.setEmail(client.getString("Email"));
//                c.setFname(client.getString("Fname"));
//                c.setLname(client.getString("Lname"));
//                c.setAddress_no(client.getString("Address_No"));
//                c.setCity(client.getString("City"));
//                c.setProvince(client.getString("Province"));
//                c.setGenderId(client.getInt("Gender_Id"));

                Gson g = new Gson();
                String toJson = g.toJson(c);
                response.getWriter().write(toJson);

            } else {
               
                photographerDao.getPhotographerById(userid);
                Photographer p = new Photographer();
//                p.setPhotographerId(photographer.getString("Photographer_Id"));
//                p.setEmail(photographer.getString("Email"));
//                p.setFname(photographer.getString("Fname"));
//                p.setLname(photographer.getString("Lname"));
//                p.setAddress_no(photographer.getString("Address_No"));
//                p.setCity(photographer.getString("City"));
//                p.setProvince(photographer.getString("Province"));
//                p.setGenderId(photographer.getInt("Gender_Id"));

                Gson g = new Gson();
                String toJson = g.toJson(p);
                response.getWriter().write(toJson);

            }

        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }

}
