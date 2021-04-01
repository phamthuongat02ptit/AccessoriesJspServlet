package com.phamthuong.controller.admin;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.phamthuong.constant.SystemConstant;
import com.phamthuong.model.ProductModel;
import com.phamthuong.paging.PageRequest;
import com.phamthuong.paging.Pageble;
import com.phamthuong.service.ICategoryService;
import com.phamthuong.service.IProductService;
import com.phamthuong.service.impl.CategoryService;
import com.phamthuong.sort.Sorter;
import com.phamthuong.utils.FormUtil;

@WebServlet(urlPatterns = "/admin-product")
public class ProductController extends HttpServlet{
	private static final long serialVersionUID = -3178503047287906200L;
	@Inject
	private IProductService productService;
	@Inject
	private ICategoryService categoryService;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ProductModel productModel = FormUtil.toModel(ProductModel.class, req);
		String views = "";
		if(productModel.getType().equals(SystemConstant.LIST)) {
			Pageble pageble = new PageRequest(productModel.getPage(), productModel.getMaxPageItem(), 
					new Sorter(productModel.getSortName(), productModel.getSortBy()));
			productModel.setListResult(productService.findAll(pageble));
			productModel.setTotalItem(productService.getTotalItem());
			productModel.setTotalPage((int) Math.ceil((double) productModel.getTotalItem() / productModel.getMaxPageItem()));
			views = "views/admin/product/list.jsp";
		}else if (productModel.getType().equals(SystemConstant.EDIT)) {
			if(productModel.getId() != null) {
				productModel = productService.findOne(productModel.getId());
			}else {
				
			}
			req.setAttribute("categories", categoryService.findAll());
			views = "views/admin/product/edit.jsp";
		}
		req.setAttribute(SystemConstant.MODEL, productModel);
		RequestDispatcher rd = req.getRequestDispatcher(views);
		rd.forward(req, resp);
		
	}

}
