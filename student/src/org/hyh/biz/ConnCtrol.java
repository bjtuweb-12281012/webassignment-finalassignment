package org.hyh.biz;
import java.sql.*;

import org.hyh.biz.ConnCtrol;
public class ConnCtrol {
   private String driver;
   private String url;
   private String user;
   private String password;
   public static ConnCtrol factory;
   public ConnCtrol(){
       //driver="com.microsoft.jdbc.sqlserver.SQLServerDriver";
       //url="jdbc:microsoft:sqlserver://localhost:1433;DataBaseName=Stu";
	   driver="org.gjt.mm.mysql.Driver";
	   url="jdbc:mysql://localhost:3306/stu?useUnicode=true&characterEncoding=GB2312";
       user="root";
       password="";
	   }
   
   Connection conn = null;
	String use = "root";
	String pass = "";
   public java.sql.Connection getConn() {
		try {
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			String url = "jdbc:mysql://localhost:3306/stu?useUnicode=true&characterEncoding=GB2312";
			conn = DriverManager.getConnection(url, use, pass);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return this.conn;
	}

    public String getDriver() {
        return driver;
    }

    public String getPassword() {
        return password;
    }

    public String getUrl() {
        return url;
    }

    public String getUser() {
        return user;
    }
    public static Connection getConnection(){
        Connection con=null;
        if(factory==null){
            try{
                factory=new ConnCtrol();
            }catch(Exception ce){
                ce.printStackTrace();
                return null;
            }
        }
        try{
            Class.forName(factory.getDriver());
            con=DriverManager.getConnection(factory.getUrl(),factory.getUser(),factory.getPassword());
        }catch(Exception ce){
            ce.printStackTrace();
        }
        return con;
    }
    public boolean checkRole(String name, String pass) {
		boolean flag = false; 
		ConnCtrol dbconn = new ConnCtrol();
		Connection conn = dbconn.getConn();
		String sqltemp = "select * from role where admins='" + name
				+ "' and pass = '" + pass+"'";
		try {
			Statement st = conn.createStatement();
			ResultSet rs = st.executeQuery(sqltemp);
			while (rs.next()) {
				flag = true;
				break;
			}
		} catch (Exception e) {
		}
		return flag;
	}
}
