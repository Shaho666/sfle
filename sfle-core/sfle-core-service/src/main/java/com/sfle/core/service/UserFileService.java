package com.sfle.core.service;

import java.io.OutputStream;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.sfle.commons.pojo.SfleResult;
import com.sfle.core.pojo.TbUserFile;

public interface UserFileService {

	public SfleResult uploadFile(MultipartFile multipartFile);
	
	public List<TbUserFile> getUserFileList(Integer userId);
	
	public SfleResult downloadFile(String storagePath, String fileName, OutputStream out);
	
	public SfleResult hideFile(Integer fileId);
	
}
