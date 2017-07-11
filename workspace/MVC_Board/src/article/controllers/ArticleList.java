package article.controllers;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import article.models.ArticleDAO;
import article.models.ArticleDAOImpl;
import article.models.ArticleVO;
import article.models.PageVO;

public class ArticleList extends AbstractController {

	@Override
	public ModelAndView handleRequestInternal(HttpServletRequest request, HttpServletResponse response) {
				
		long pg = 1;
		 
		try {
			pg = Long.parseLong(request.getParameter("pg"));
		} catch(NumberFormatException e){}

		int pageSize = 10; // 한페이지에 출력할 게시물 수
		
		long startNum = (pg - 1) * pageSize + 1;	// 출력페이지 시작번호
		long endNum = pg * pageSize;				// 출력페이지 끝번호
		
		PageVO pageVO = new PageVO(startNum, endNum);
		
		ArticleDAO articleDAO = ArticleDAOImpl.getInstance();
		ModelAndView mav = new ModelAndView();
		
		try {
			
			List<ArticleVO> list = articleDAO.getArticleList(pageVO);
			
			mav.setViewName("/WEB-INF/views/article/list.jsp");
			mav.addObject("list", list);
		} catch (Exception e) {
			e.printStackTrace();
			
			mav.setViewName("/WEB-INF/views/result.jsp");
			mav.addObject("msg", "리스트 출력 에러 \n 관리자에게 문의하세요.");
			mav.addObject("url", "");
		}
		
		return mav;
	}

} //end class
