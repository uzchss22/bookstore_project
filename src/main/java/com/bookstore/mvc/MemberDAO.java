package com.bookstore.mvc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.bookstore.comm.JdbcConnectUtil;

public class MemberDAO {
    private Connection con;
    private PreparedStatement pstmt;
    private ResultSet rs;

    public MemberDAO() {
        con = JdbcConnectUtil.getConnection();
    }

    public MemberDTO loginCheck(String id, String password) {
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        MemberDTO member = null;
        try {
            String strQuery = "select id, pswd, name from userinfo where id = ? and pswd = ?";
            pstmt = con.prepareStatement(strQuery);
            pstmt.setString(1, id);
            pstmt.setString(2, password);
            rs = pstmt.executeQuery();

            if (rs.next()) {
                member = new MemberDTO();
                member.setId(rs.getString("id"));
                member.setPassword(rs.getString("pswd"));
                member.setName(rs.getString("name"));
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            JdbcConnectUtil.close(con, pstmt, rs);
        }
        return member; 
    }
    public boolean memberInsert(MemberDTO mDTO) {
        PreparedStatement pstmt = null;
        boolean flag = false;
        try {
            String strQuery = "insert into userinfo values(?,?,?)";
            pstmt = con.prepareStatement(strQuery);
            pstmt.setString(1, mDTO.getId());
            pstmt.setString(2, mDTO.getPassword());
            pstmt.setString(3, mDTO.getName());

            int count = pstmt.executeUpdate();

            if (count == 1) {
                flag = true;
            }

        } catch (Exception ex) {
            System.out.println("Exception" + ex);
        } finally {
        	JdbcConnectUtil.close(con, pstmt, null);
        }
        return flag;
    }

}
