package controllers;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import dao.CategoryDAO;
import dao.CustomerDAO;
import entities.Category;
import entities.Customer;

@Controller
@RequestMapping("/admin")
public class CategoryController {
	@Autowired
	CategoryDAO categoryDAO;

	@RequestMapping(value = "/category")
	public String index(Model model, Integer page) {
		Integer itemPage = 3;
		Integer offset;
		if (page == null)
			offset = 0;
		else
			offset = (page - 1) * itemPage;

		List<Category> category = categoryDAO.getCategoryPagination(offset, itemPage);
		model.addAttribute("category", category);

		Long totals = categoryDAO.getTotalCategoryPagination();
		Integer totalPage = (int) (totals / itemPage + (totals % itemPage == 0 ? 0 : 1));

		List<Integer> list = new ArrayList();
		for (int i = 1; i <= totalPage; i++) {
			list.add(i);
		}

		model.addAttribute("list", list);
		return "admin/category/listCategory";

	}
	
	@RequestMapping(value = "category/insertCategory")
	public String insert(Model model) {
		Category category = new Category();
		model.addAttribute("category", category);
		return "admin/category/insertCategory";
	}
	
	@RequestMapping(value = "/category/save")
	public String insert( @ModelAttribute("category") Category category, BindingResult result, Model model) {
		if(result.hasErrors()) {
			model.addAttribute("category", category);
			return "admin/category/insertCategory";
		}
		categoryDAO.insert(category);
		return "redirect:/admin/category";
	}
	
	@RequestMapping(value = "/category/edit")
	private String update(Model model, @RequestParam Integer categoryId) {
		model.addAttribute("category", categoryDAO.getCategoryById(categoryId));
		return "admin/category/updateCategory";
	}
	
	@RequestMapping(value = "/category/updateCategory")
	private String update(@ModelAttribute("category") Category category, Integer categoryId, Model model) {
		categoryDAO.update(category);
		return "redirect:/admin/category";
	}
	
	@RequestMapping(value = "/category/delete")
	public String delete(@RequestParam("categoryId") Integer categoryId, Model model) {
		categoryDAO.delete(categoryId);
		return "redirect:/admin/category";
	}
	
	@RequestMapping(value = "/category/search")
	public String index(Model model, @RequestParam("key") String key) {
		System.out.println(key);
		model.addAttribute("category", categoryDAO.search(key));
		return "admin/category/listCategory";
	}
}
