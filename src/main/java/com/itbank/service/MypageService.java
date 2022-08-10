package com.itbank.service;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.itbank.oneplus.AskDAO;
import com.itbank.oneplus.AskDTO;

@Service
public class MypageService {

	@Autowired private AskDAO askDAO;
	private String uploadPath = "D:\\ProjectForder";
	
	public MypageService() {
		File dir = new File(uploadPath);
		if(dir.exists() && dir.isFile()) {
			dir.delete();
		}
		if(dir.exists() == false) {
			dir.mkdirs();
		}
	}
	
	// 문의하기 2022 08 09 ~ 작업중입니다
	public int write(AskDTO dto) throws IllegalStateException, IOException {
		String fileName = makeNewFileName(dto);
		File dest = new File(uploadPath, fileName);
		dto.getAskFile().transferTo(dest);
		
		boolean flag = "".equals(dto.getAskFile().getOriginalFilename());
		dto.setImg(flag ? "" : fileName);
		
		int row = askDAO.insert(dto);
		return row;
	}

	private String makeNewFileName(AskDTO dto) {
		MultipartFile f = dto.getAskFile();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String today = sdf.format(new Date());
		String fileName = today + "_" + dto.getIdx() + "_" + f.getOriginalFilename();
		return fileName;
	}

}