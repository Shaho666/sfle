package com.sfle.core.controller;

import java.util.List;
import java.util.Properties;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.sfle.commons.pojo.SfleResult;
import com.sfle.core.pojo.TbUserFile;
import com.sfle.core.service.UserFileService;

@Controller
@RequestMapping("/userFile")
public class UserFileController {

	@Autowired
	private UserFileService userFileService;

	@RequestMapping("/add")
	public String addUserFile() {

		return "file-upload";
	}

	@RequestMapping(value = "/upload", method = RequestMethod.POST)
	public String uploadFile(@RequestParam("upload") MultipartFile multipartFile) {

		userFileService.uploadFile(multipartFile);
		return "redirect:/userFile/add";
	}

	@RequestMapping("/list")
	public String getUserFileList(ModelMap modelMap, @RequestParam Integer userId) {

		List<TbUserFile> list = userFileService.getUserFileList(userId);
		modelMap.put("userFileList", list);

		Properties properties = System.getProperties();
		String sysUserName = properties.getProperty("user.name");
		modelMap.put("sysUserName", sysUserName);

		return "file-list";
	}

	@RequestMapping("/download")
	@ResponseBody
	public SfleResult downloadFile(@RequestParam String storagePath, @RequestParam String fileName,
			HttpServletResponse response) {

		response.setHeader("Content-Disposition", "attachment;filename=" + fileName);

		SfleResult result = null;

		try {

			fileName = new String(fileName.getBytes("iso-8859-1"), "utf-8");

			result = userFileService.downloadFile(storagePath, fileName, response.getOutputStream());

		} catch (Exception e) {
			e.printStackTrace();
		}

		return result;
	}

	@RequestMapping("/hidden")
	public String hideFile(@RequestParam Integer fileId, @RequestParam Integer userId) {

		userFileService.hideFile(fileId);
		return "redirect:/userFile/list?userId=" + userId;
	}

}
