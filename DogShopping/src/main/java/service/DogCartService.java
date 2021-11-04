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
		//1. 세선 객체 얻어오기
		HttpSession session = request.getSession();
		
		//2. 자기자신 세션영역에 있는 장바구니 항목을 얻어옴
		//2-1. 현재 세션에 장바구니 영역(컬렉션) 자체가 없으면 새로 만들어서 상품정보를 담고 세션에 추가
		//2-2. 현재 세션에 장바구니 영역(단위)가 있으면 해당 단위를 얻어와서 거기에 상품정보를 추가
		ArrayList<CartVO> cartList = (ArrayList<CartVO>)session.getAttribute("cartList");
		
		if(cartList == null) {
			//장바구니에 처음으로 상품정보를 추가한 경우
			cartList = new ArrayList<CartVO>();
			session.setAttribute("cartList", cartList);
		}
		
		//3. 상품을 cartList에 추가하는 작업
		//3-1. 지금 추가하는 상품이 기존에 추가되어 있지 않을 때
		//새로운 CartVO 객체를 생성해서 cartList에 add
		
		//3-2. 지금 추가하는 상품이 기존에 추가되어 있을 때
		//기존에 추가되어 있는 상품의 수량을 증가
	}

}
