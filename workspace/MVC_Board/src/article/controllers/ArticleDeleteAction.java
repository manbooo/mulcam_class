package article.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import article.models.ArticleDAO;
import article.models.ArticleDAOImpl;
import article.models.ArticleVO;

public class ArticleDeleteAction extends AbstractController {

	@Override
	public ModelAndView handleRequestInternal(HttpServletRequest request, HttpServletResponse response) {

		long no = Long.parseLong(request.getParameter("no"));
		String name = request.getParameter("name");
		String content = request.getParameter("content");
		String pwd = request.getParameter("pwd");
		String title = request.getParameter("title");
		
		ArticleVO articleVO = new ArticleVO();
		articleVO.setNo(no);
		articleVO.setName(name);
		articleVO.setTitle(title);
		articleVO.setContent(content);
		articleVO.setPwd(pwd);
		
		ArticleDAO articleDAO = ArticleDAOImpl.getInstance();
		ModelAndView mav = new ModelAndView("/WEB-INF/views/result.jsp");
		
		try {
			articleDAO.deleteArticle(articleVO);
			mav.addObject("msg", "글 삭제 성공");
			mav.addObject("url", "list" + no);
		} catch (Exception e) {
			e.printStackTrace();
			mav.addObject("msg", "글 삭제 실패");
			mav.addObject("url", "javascript:history.back();");
		}
		
		return mav;
	}

}
