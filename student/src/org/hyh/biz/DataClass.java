package org.hyh.biz;
import java.sql.*;
import java.util.ArrayList;
public class DataClass {
    private String id;
    private String name;
    private String classGrent;
    private String result;
    public DataClass() {
    }
 
    public void setId(String id) {
        this.id = id;
    }
    
    public void setName(String name) {
        this.name = name;
    }


    public void setClassGrent(String classGrent) {
        this.classGrent = classGrent;
    }

    public void setResult(String result) {
        this.result = result;
    }

    public String getId() {
        return id;
    }
    
    public String getName() {
        return name;
    }

    public String getClassGrent() {
        return classGrent;
    }

    public String getResult() {
        return result;
    }
    public boolean insert(){
        Connection con=null;
        Statement rs=null;
        try{
           con=ConnCtrol.getConnection();
           rs=con.createStatement();
           rs.executeUpdate("insert into student values('"+id+"','"+name+"','"+classGrent+"','"+result+"')");
        }catch(Exception ce){
            ce.printStackTrace();
            return false;
        }
        return true;
    }
    public ArrayList select(){
        Connection con=null;
        Statement rs=null;
        ResultSet s=null;
        ArrayList list=new ArrayList();
        try{
            con=ConnCtrol.getConnection();
            rs=con.createStatement();
            s=rs.executeQuery("select * from student");
            while(s.next()){
                DataClass p=new DataClass();
                p.setId(s.getString("id"));
                p.setName(s.getString("name"));
                p.setClassGrent(s.getString("classgrent"));
                p.setResult(s.getString("result"));
                list.add(p);
            }
        }catch(Exception ce){
            ce.printStackTrace();
        }
        return list;
    }
    public ArrayList getAllDataList(){
        Connection con=null;
        Statement rs=null;
        ResultSet s=null;
        ArrayList list=new ArrayList();
        try{
            con=ConnCtrol.getConnection();
            rs=con.createStatement();
            s=rs.executeQuery("select * from student where id='"+id+"'");
            while(s.next()){
            	DataClass p=new DataClass();
                p.setId(s.getString("id"));
                p.setName(s.getString("name"));
                p.setClassGrent(s.getString("classgrent"));
                p.setResult(s.getString("result"));
                list.add(p);
            }
        }catch(Exception ce){
            ce.printStackTrace();
        }
        return list;
    }

    public boolean update(){
        Connection con=null;
        Statement rs=null;
        try{
            con=ConnCtrol.getConnection();
            rs=con.createStatement();
            rs.executeUpdate("update student set ClassGrent='"+classGrent+"',result='"+result+"' where id='"+id+"'");
        }catch(Exception ce){
            ce.printStackTrace();
            return false;
        }
        return true; 
    }
    public boolean delete(){
        Connection con=null;
        Statement rs=null;
        try{
            con=ConnCtrol.getConnection();
            rs=con.createStatement();
            rs.executeUpdate("delete from student where id='"+id+"'");
        }catch(Exception ce){
            ce.printStackTrace();
            return false;
        }
        return true;
    }
}
