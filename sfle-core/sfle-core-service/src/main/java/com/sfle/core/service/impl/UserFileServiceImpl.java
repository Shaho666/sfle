package com.sfle.core.service.impl;

import java.io.BufferedOutputStream;
import java.io.OutputStream;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.sfle.commons.pojo.SfleResult;
import com.sfle.commons.utils.ExceptionUtil;
import com.sfle.commons.utils.FastDFSClient;
import com.sfle.core.mapper.TbUserFileMapper;
import com.sfle.core.pojo.TbUserFile;
import com.sfle.core.pojo.TbUserFileExample;
import com.sfle.core.pojo.TbUserFileExample.Criteria;
import com.sfle.core.service.UserFileService;

@Service
public class UserFileServiceImpl implements UserFileService {

	@Value("${FILE_SERVER_BASE_URL}")
	private String FILE_SERVER_BASE_URL;

	@Autowired
	private TbUserFileMapper userFileMapper;

	@Override
	public SfleResult uploadFile(MultipartFile multipartFile) {

		try {

			String originalFilename = multipartFile.getOriginalFilename();
			String extName = originalFilename.substring(originalFilename.lastIndexOf(".") + 1);
			FastDFSClient client = new FastDFSClient("classpath:properties/client.conf");
			String url = client.uploadFile(multipartFile.getBytes(), extName);

			String fullUrl = FILE_SERVER_BASE_URL + url;

			TbUserFile tbUserFile = new TbUserFile();
			tbUserFile.setName(multipartFile.getOriginalFilename());
			tbUserFile.setSize(multipartFile.getSize());
			tbUserFile.setCreated(new Date());
			tbUserFile.setStatus(1);
			tbUserFile.setBaseUrl(FILE_SERVER_BASE_URL);
			tbUserFile.setStorageUrl(url);

			userFileMapper.insert(tbUserFile);

			return SfleResult.ok(fullUrl);

		} catch (Exception e) {
			e.printStackTrace();
			return SfleResult.build(500, ExceptionUtil.getStackTrace(e));
		}

	}

	@Override
	public List<TbUserFile> getUserFileList(Integer userId) {

		TbUserFileExample example = new TbUserFileExample();
		Criteria criteria = example.createCriteria();
		criteria.andStatusEqualTo(1);

		List<TbUserFile> list = userFileMapper.selectByExample(example);

		if (list != null && list.size() > 0) {
			return list;
		}

		return null;
	}

	@Override
	public SfleResult downloadFile(String storagePath, String fileName, OutputStream out) {

		try {

			BufferedOutputStream buf = new BufferedOutputStream(out);
			
			FastDFSClient client = new FastDFSClient("classpath:properties/client.conf");
			client.download_file(storagePath, buf);

			out.close();
			buf.close();
			
			return SfleResult.ok(fileName);
			
		} catch (Exception e) {
			e.printStackTrace();
		}

		return null;
	}

	@Override
	public SfleResult hideFile(Integer fileId) {
		
		TbUserFile userFile = userFileMapper.selectByPrimaryKey(fileId);
		
		if(userFile == null) {
			return SfleResult.build(500, "there is not any this kind of file");
		}
		
		userFile.setStatus(0);
		userFileMapper.updateByPrimaryKey(userFile);
		
		return SfleResult.ok();
	}

}
