package com.xjl.oracle.controller;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.xjl.oracle.domain.Article;
import com.xjl.oracle.domain.Comment;
import com.xjl.oracle.domain.Item;
import com.xjl.oracle.service.ArticleService;
import com.xjl.oracle.service.CommentService;
import com.xjl.oracle.service.ItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/article")
public class ArticleController {
    @Autowired
    private ArticleService articleService;
    @Autowired
    private ItemService itemService;
    @Autowired
    private CommentService commentService;
    @RequestMapping("/addArticle")
    public String addArticle(Article article, MultipartFile file, HttpSession session, HttpServletRequest request) throws IOException {
        String userId = request.getParameter("userId");
        article.setArticleUserId(Integer.parseInt(userId));
        String filename = file.getOriginalFilename();
        ServletContext servletContext = session.getServletContext();
        String realPath = servletContext.getRealPath("/upload");
        File upload = new File(realPath);
        if(!upload.exists()){
            upload.mkdirs();
        }
        file.transferTo(new File(realPath+"/"+filename));
        article.setArticleImg("upload/"+filename);
        articleService.addArticle(article);
        return "user/default";
    }
    @RequestMapping("/findAll" )
    public String findAll(Map<String,Object> map,int userId){
//        String userId = request.getParameter("userId");
//        int id1 = Integer.parseInt(userId);
//        System.out.println(userId);

        List<Article> articleList = articleService.findAll(userId);
        if(articleList.isEmpty()){
            map.put("alert","您的文章空间空空如也");
            return "user/manager";
        }else{
            map.put("articleList",articleList);
            return "user/manager";
        }
    }

    @RequestMapping("/findOne")
    public String findOne(int articleId,Map<String,Object> map){
        Article article = articleService.findOne(articleId);
        List<Comment> commentList = commentService.findAll();
        map.put("commentList",commentList);
        map.put("article",article);
        return "user/detail";
    }
    @RequestMapping("/findAllWithPage")
    public String findAllWithPage(@RequestParam(value="pageNum",defaultValue = "1") Integer pageNum,Map<String,Object> map){
        PageHelper.startPage(pageNum,5);
        List<Article> allWithPage = articleService.findAllWithPage();
        //System.out.println(allWithPage);
        PageInfo pageArticleList  = new PageInfo(allWithPage,3);
        //System.out.println(page.getTotal());
        map.put("pageArticleList",pageArticleList);
        //System.out.println(page.getList());
// map.put("articleList",articleList);
        return "user/index";

    }
    //删除文章
    @RequestMapping("/delete")
    public String delete(int articleId){
        articleService.delete(articleId);
        return "user/default2";
    }
    @RequestMapping("/toFindAll")
    public String toFindAll(){
        return "user/default2";
    }
    @RequestMapping("/findOneAdmin")
    public String findOneAdmin(int articleId,Map<String,Object> map){
        Article articleAdmin = articleService.findOneAdmin(articleId);
        map.put("articleAdmin",articleAdmin);
        List<Item> items = itemService.findAll();
        map.put("items",items);
        return "user/article_edit";
    }
    @RequestMapping("/findOnePotal")
    public String findOnePotal(int articleId,Map<String,Object> map){
        Article onePotal = articleService.findOnePotal(articleId);
        map.put("onePotal",onePotal);
        List<Comment> commentList = commentService.findAll();
        map.put("commentList",commentList);
        return "user/detail";

    }
//    public String findOnePotal(int articleId,Map<String,Object> map){
//        Article articlePotal = articleService.findOnePotal(articleId);
//        map.put("articlePotal",articlePotal);
//        List<Item> items = itemService.findAll();
//        map.put("items",items);
//        return "user/detail";
//    }
//    @RequestMapping("update")
//    public String update(String articleTitle,int articleUserId,int articleItemId,String articleImg,String articleTime,String articleDesc,int articleId, MultipartFile file, HttpSession session) throws IOException {
//        String filename = file.getOriginalFilename();
//        ServletContext servletContext = session.getServletContext();
//        String realPath = servletContext.getRealPath("/upload");
//        File upload = new File(realPath);
//        if(!upload.exists()){
//            upload.mkdirs();
//        }
//        file.transferTo(new File(realPath+"/"+filename));
////        article.setArticleImg();
//        articleService.update(articleTitle,articleUserId,articleItemId,"upload/"+filename,articleTime,articleDesc,articleId);
//
//        return "user/default2";
//    }
//    @RequestMapping("/toAdd")
//    public String toAdd(){
//        return "user/default3";
//    }
    @RequestMapping("/update2")
    public String update2(int articleId,String articleTitle,String articleDesc) throws IOException {

        articleService.update2(articleId,articleTitle,articleDesc);
        return "user/default2";
    }


}
