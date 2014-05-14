package org.hyh.biz;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import org.hyh.biz.*;

public class RolBiz {
	/**
	 * 得到管理员的对象
	 * 
	 * @param id
	 * @return
	 */
	public Role getRoleById(int id) {
		ConnCtrol dbconn = new ConnCtrol();
		Role role = new Role();
		Connection conn = dbconn.getConn();
		String sqltemp = "select * from role where id=" + id;
		try {
			Statement st = conn.createStatement();
			ResultSet rs = st.executeQuery(sqltemp);
			while (rs.next()) {
				role.setId(rs.getInt("id"));
				role.setAdmins(rs.getString("admins"));
				role.setPass(rs.getString("pass"));

			}
		} catch (Exception e) {
		}
		return role;
	}

	/**
	 * update the role by id
	 * 
	 * @param id
	 * @return
	 */
	public boolean updataRoleByRole(Role role) {
		boolean flag = false;
		ConnCtrol dbconn = new ConnCtrol();
		Connection conn = dbconn.getConn();

		String sqltemp = "update role set admins ='" + role.getAdmins()
				+ "' , pass = " + role.getPass() + "  where id = " + role.getId();
		try {
			Statement st = conn.createStatement();
			st.executeUpdate(sqltemp);
			flag = true;
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("失败了");
		}
		return flag;
	}
}
