package service;
import static db.JdbcUtil.*;

import java.sql.Connection;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import dao.DogDAO;
import vo.CartVO;
import vo.DogVO;
public class DogCartService {

	public DogVO getCartDogVO(int id) throws Exception {
		// TODO Auto-generated method stub
		Connection con = getConnection();
	    DogDAO dogDAO = DogDAO.getInstance();
	    dogDAO.setConnection(con);
	    
	    DogVO cartDogVO = dogDAO.selectCartDogVO(id);
	    close(con);
		return cartDogVO;
	}

	public void addCart(DogVO cartDogVO, HttpServletRequest request) {
		// TODO Auto-generated method stub
		//1. ���� ��ü ������
		HttpSession session = request.getSession();
		
		//2. �ڱ��ڽ� ���ǿ����� �ִ� ��ٱ��� �׸��� ����
		//2-1. ���� ���ǿ� ��ٱ��� ����(�÷���) ��ü�� ������ ���� ���� ��ǰ������ ��� ���ǿ� �߰�
		//2-2. ���� ���ǿ� ��ٱ��� ����(����)�� ������ �ش� ������ ���ͼ� �ű⿡ ��ǰ������ �߰�
		ArrayList<CartVO> cartList = (ArrayList<CartVO>)session.getAttribute("cartList");
		
		if(cartList == null) {
			//��ٱ��Ͽ� ó������ ��ǰ������ �߰��� ���
			cartList = new ArrayList<CartVO>();
			session.setAttribute("cartList", cartList);
		}
		
		//3. ��ǰ�� cartList�� �߰��ϴ� �۾�
		//3-1. ���� �߰��ϴ� ��ǰ�� ������ �߰��Ǿ� ���� ���� ��
		//���ο� CartVO ��ü�� �����ؼ� cartList�� add
		
		//3-2. ���� �߰��ϴ� ��ǰ�� ������ �߰��Ǿ� ���� ��
		//������ �߰��Ǿ� �ִ� ��ǰ�� ������ ����
	}

}
