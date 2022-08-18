package com.itbank.service;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.itbank.component.HashComponent;
import com.itbank.oneplus.AskDTO;
import com.itbank.oneplus.MemberDTO;
import com.itbank.oneplus.MypageDAO;

@Service
public class MypageService {

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

	// 문의하기 2022 08 09 ~ 작업중입니다
//	public int write(AskDTO dto) throws IllegalStateException, IOException {
//		String fileName = makeNewFileName(dto);
//		File dest = new File(uploadPath, fileName);
//		dto.getAskFile().transferTo(dest);
//
//		boolean flag = "".equals(dto.getAskFile().getOriginalFilename());
//		dto.setImg(flag ? "" : fileName);
//
//		int row = askDAO.insert(dto);
//		return row;
//	}

//	private String makeNewFileName(AskDTO dto) {
//		MultipartFile f = dto.getAskFile();
//		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
//		String today = sdf.format(new Date());
//		String fileName = today + "_" + dto.getIdx() + "_" + f.getOriginalFilename();
//		return fileName;
//	}

	// 1:1 문의하기 (이미지 없이_미완성)
	public int askWrite(AskDTO dto) {
		return mypageDAO.askWrite(dto);
	}

	// 1:1 문의 내역
	public List<AskDTO> selectAskAll() {
		return mypageDAO.selectAskAll();
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
		// dto에 있는 address를 스플릿을 이용하여 분할해야함, 자르는 기준은 /
		// 분할한 각각을 dto.addr_juso, dto.addr_detail, dto.addr_Reference에 저장
		return mypageDAO.selectOneMember(idx);
	}

	// 회원정보 수정
	public int modify(MemberDTO dto) {
		String address = dto.getAddr_number() +"/"+  dto.getAddr_juso() +"/"+ dto.getAddr_detail() +"/"+  dto.getAddr_Reference();
		dto.setAddress(address);							// 주소API로 전달한 각각의 주소를 address로 합친다
		String hashpw = hash.getHash(dto.getUserpw());
		dto.setUserpw(hashpw);
		return mypageDAO.update(dto);
	}
	
}
