/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.DaoImpl;

import DB.DB;
import Model.Dao.PhotographDao;
import Model.Dao.PurchaseInvoiceDao;
import Model.Photograph;
import Model.PurchaseInvoice;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author kesh
 */
public class PurchaseInvoiceDaoImpl implements PurchaseInvoiceDao {

    @Override
    public ArrayList<PurchaseInvoice> getPurchacedPhotos(String clientId) throws SQLException {

        ArrayList<PurchaseInvoice> photos = new ArrayList<>();
        
        try {
            ResultSet photoInvoices = DB.search("SELECT  * FROM purchaseinvoice WHERE Client_Id = '" + clientId + "'");

            while (photoInvoices.next()) {
                PurchaseInvoice p = new PurchaseInvoice();
                p.setInvoice_id(photoInvoices.getString("Invoice_Id"));
                p.setDate(photoInvoices.getDate("Date"));
                p.setTime(photoInvoices.getDate("Time"));
                p.setTotal(photoInvoices.getDouble("Total"));
                
                PhotographDao p2 = new PhotographDaoImpl();
                Photograph photographById = p2.getPhotographById(photoInvoices.getInt("Photograph_Id"));
                
                p.setPhotograph(photographById);
                
                p.setClientId(photoInvoices.getString("Client_Id"));
                
                photos.add(p);
            }

        } catch (SQLException ex) {
            ex.printStackTrace();

        }
        return photos;

    }

}
