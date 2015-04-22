package com.mu.webapp.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Calendar;
import java.util.GregorianCalendar;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ExtendedModelMap;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.mu.Constants;
import com.mu.common.MUException;
import com.mu.model.Merchant;
import com.mu.service.ShoppingManager;
import com.mu.util.StringUtil;

@Controller
public class ShoppingController extends BaseFormController {

	private ShoppingManager shoppingManager;

	@Autowired
	public void setShoppingManager(ShoppingManager shoppingManager) {
		this.shoppingManager = shoppingManager;
	}

	@ModelAttribute
	@RequestMapping(value = "/shopping", method = RequestMethod.GET)
	public ModelAndView showShoppingPage(final HttpServletRequest request,
			final HttpServletResponse response) throws MUException {
		Model model = new ExtendedModelMap();
		model.addAttribute("activeMenu", "shopping-link");
		return new ModelAndView("/mu/shopping", model.asMap());
	}

	@ModelAttribute
	@RequestMapping(value = "/admin/merchant", method = RequestMethod.GET)
	public ModelAndView showMerchantPage(final HttpServletRequest request,
			final HttpServletResponse response) throws MUException {
		Model model = new ExtendedModelMap();
		String merchantId = request.getParameter("id");
		if (!StringUtil.isEmptyString(merchantId)) {
			model.addAttribute("merchant",
					shoppingManager.getMerchantById(Long.parseLong(merchantId)));
		} else {
			model.addAttribute("merchant", new Merchant());
		}
		return new ModelAndView("/admin/merchant", model.asMap());
	}

	@ModelAttribute
	@RequestMapping(value = "/admin/merchants", method = RequestMethod.GET)
	public ModelAndView showMerchants(final HttpServletRequest request,
			final HttpServletResponse response) throws MUException {
		Model model = new ExtendedModelMap();
		model.addAttribute(Constants.MERCHANT_LIST,
				shoppingManager.getAllMerchant());
		return new ModelAndView("/admin/merchantList", model.asMap());
	}

	@ModelAttribute
	@RequestMapping(value = "/admin/saveMerchantDetails", method = RequestMethod.POST)
	public ModelAndView saveMerchant(Merchant merchant, BindingResult errors,
			HttpServletRequest request) {
		Model model = new ExtendedModelMap();
		MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) request;
		CommonsMultipartFile file = (CommonsMultipartFile) multipartRequest
				.getFile("file");
		if (file != null && !file.isEmpty()) {
			// the directory to upload to
			String uploadDir = getServletContext().getRealPath("/images");
			uploadDir += "/" + merchant.getMerchantName() + "/";
			// Create the directory if it doesn't exist
			File dirPath = new File(uploadDir);
			if (!dirPath.exists()) {
				dirPath.mkdirs();
			}
			// retrieve the file data
			InputStream stream;
			try {
				stream = file.getInputStream();
				// write the file to the file specified
				OutputStream bos = new FileOutputStream(uploadDir
						+ merchant.getMerchantType().getTypeName());
				int bytesRead;
				byte[] buffer = new byte[8192];
				while ((bytesRead = stream.read(buffer, 0, 8192)) != -1) {
					bos.write(buffer, 0, bytesRead);
				}
				bos.close();
				// close the stream
				stream.close();
				String logoPath = dirPath.getAbsolutePath()
						+ Constants.FILE_SEP
						+ merchant.getMerchantType().getTypeName();
				merchant.setLogoPath(logoPath);
			} catch (IOException e) {
				saveError(request, "problem in saving logo...");
				return new ModelAndView("/admin/merchantList", model.asMap());
			}

		}
		Calendar now = new GregorianCalendar();
		if (StringUtil.isEmptyString(merchant.getId())) {
			merchant.setCreatedOn(now);
		}
		merchant.setUpdatedOn(now);
		shoppingManager.saveMerchant(merchant);
		saveMessage(request, "merchant saved successfully.");
		model.addAttribute(Constants.MERCHANT_LIST,
				shoppingManager.getAllMerchant());
		return new ModelAndView("/admin/merchantList", model.asMap());
	}
}