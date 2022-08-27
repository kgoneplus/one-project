package com.itbank.service;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.itbank.component.HashComponent;
import com.itbank.oneplus.AskDTO;
import com.itbank.oneplus.MemberDTO;
import com.itbank.oneplus.MypageDAO;
import com.itbank.oneplus.OrdersDAO;
import com.itbank.oneplus.OrdersDetailDTO;
import com.itbank.oneplus.ProductDTO;
import com.itbank.oneplus.ReviewDTO;

@Service
public class MypageService {

	@Autowired private OrdersDAO ordersDao;
	@Autowired private MypageDAO mypageDAO;
	@Autowired private HashComponent hash;
	private String uploadPath = "D:\\ProjectForder";

	public MypageService() {
		File dir = new File(uploadPath);
		if (dir.exists() && dir.isFile()) {
			dir.delete();
		}
		if (dir.exists() == false) {
			dir.mkdirs();
		}
	}

	// 1:1 문의하기 (이미지 없이_미완성)
	public int askWrite(AskDTO dto) {
		return mypageDAO.askWrite(dto);
	}
	
//	public int askWrite(AskDTO dto) throws IllegalStateException, IOException {
//		String fileName = makeNewFileName(dto);
//		File dest = new File(uploadPath, fileName);
//		dto.getAskFile().transferTo(dest);
//		
//		boolean flag = "".equals(dto.getAskFile().getOriginalFilename());
//		dto.setImg(flag ? "" : fileName);
//		
//		return mypageDAO.askWrite(dto);
//	}

//	private String makeNewFileName(AskDTO dto) {
//		MultipartFile f = dto.getAskFile();
//		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
//		String today = sdf.format(new Date());
//		String fileName = today + "_" + dto.getIdx() + "_" + f.getOriginalFilename();
//		return fileName;
//	}

	// 1:1 문의 내역
	public List<AskDTO> selectAskAll(int idx) {
		return mypageDAO.selectAskAll(idx);
	}
	
	// 1:1 문의 상세 보기(관리자 코멘트 작성 해야함)
	public AskDTO selectAskOne(int idx) {
		return mypageDAO.selectAskOne(idx);
	}

	// 회원탈퇴
	public int delete(MemberDTO dto) {
		String hashpw = hash.getHash(dto.getUserpw());
		dto.setUserpw(hashpw);
		int login = mypageDAO.delete(dto);
		return login;
	}

	// 수정할 회원정보 불러오기
	public MemberDTO selectOneMember(int idx) {
		return mypageDAO.selectOneMember(idx);
	}

	// 회원정보 수정
	public int modify(MemberDTO dto) {
		String address = dto.getAddr_number() +"/"+  dto.getAddr_juso() +"/"+ dto.getAddr_detail() +"/"+  dto.getAddr_Reference();
		dto.setAddress(address);
		String hashpw = hash.getHash(dto.getUserpw());
		dto.setUserpw(hashpw);
		return mypageDAO.update(dto);
	}

	// 1:1 문의 삭제
	public int askOneDelete(int idx) {
		return mypageDAO.askOneDelete(idx);
	}

	// 리뷰할 상품 더미
	public List<ProductDTO> selectReviewList() {
		return mypageDAO.selectReviewList();
	}

	// 리뷰작성
	public int writeReview( ReviewDTO dto) {
		System.out.println("서비스Grade : " + dto.getReviewGrade());
		return mypageDAO.writeReview(dto);
	}

	public List<OrdersDetailDTO> selectOrdersList(int idx) {
		return ordersDao.selectOrdersList(idx);
	}
}
