package dao;

import model.SmartphoneModel;
import org.hibernate.Session;

import java.util.List;

public class Manager implements DAOManager{

    public void addSmartphone(String company, String model, int price, int year) {
        try(Session session = HibernateUtil.getSessionFactory().openSession()){

            session.beginTransaction();
            SmartphoneModel smart = new SmartphoneModel(company, model, price, year);
            session.save(smart);
            session.getTransaction().commit();

            System.out.println("Smartphone is added");

        }catch (Exception e){
            System.out.println("Exception: " + e);
            e.printStackTrace();
        }
    }

    public void showAllSmartphones() {
        try(Session session = HibernateUtil.getSessionFactory().openSession()){

            session.beginTransaction();
            List models = session.createQuery("FROM SmartphoneModel").list();

            for (Object model : models) {
                System.out.println(model);
            }

        }catch (Exception e){
            e.printStackTrace();
        }
    }

    public SmartphoneModel getSmartphoneById(int id) {
        SmartphoneModel model = null;

        try(Session session = HibernateUtil.getSessionFactory().openSession()){
            model = session.get(SmartphoneModel.class, id);

        }catch (Exception e){
            e.printStackTrace();
        }
        return model;
    }

    public void removeSmartphone(int id) {
        try(Session session = HibernateUtil.getSessionFactory().openSession()){

            session.beginTransaction();
            SmartphoneModel model = session.get(SmartphoneModel.class, id);
            session.delete(model);
            session.getTransaction().commit();

            System.out.println("Smartphone with id:" + id + " removed");

        }catch (Exception e){
            System.out.println("Smartphone isn't removed" + e);
            e.printStackTrace();
        }
    }

    public void updateSmartphone(int id, int price) {
        try(Session session = HibernateUtil.getSessionFactory().openSession()){

            session.beginTransaction();
            SmartphoneModel model = session.get(SmartphoneModel.class, id);
            model.setPrice(price);
            session.update(model);
            session.getTransaction().commit();

        }catch (Exception e){
            System.out.println("TestUser isn't updated" + e);
            e.printStackTrace();
        }
    }

    public List<SmartphoneModel> getListOfAllModels(){
        List<SmartphoneModel> models= null;

        try(Session session = HibernateUtil.getSessionFactory().openSession()){

            session.beginTransaction();
            models = session.createQuery("FROM SmartphoneModel").list();

        }catch (Exception e){
            e.printStackTrace();
        }

     return models;
    }
}