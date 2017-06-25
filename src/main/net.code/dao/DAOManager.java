package dao;

import model.SmartphoneModel;

public interface DAOManager {

    void addSmartphone(String company, String model, int price, int year);

    SmartphoneModel getSmartphoneById(int id);

    void removeSmartphone(int id);

    void updateSmartphone(int id, int price);
}
