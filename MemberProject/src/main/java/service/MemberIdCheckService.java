package service;

import static db.JdbcUtil.*;

import java.sql.Connection;

import dao.MemberDAO;

public class MemberIdCheckService {

	public boolean existMemberId(String memberId) {
		// TODO Auto-generated method stub
		boolean memberIdExist = false;
		Connection con = getConnection();
		MemberDAO memberDAO = MemberDAO.getInstance();
		memberDAO.setConnection(con);
		
		String dbmemberId = memberDAO.selectMemberId(memberId);
		if(dbmemberId != null) {
			memberIdExist = true;
		}
		close(con);
		return memberIdExist;
	}

}
