package com.zlw.controller.back;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.zlw.bean.Catalog;
import com.zlw.bean.Order;
import com.zlw.bean.Travel;
import com.zlw.bean.User;
import com.zlw.service.CatalogService;
import com.zlw.service.OrderService;
import com.zlw.service.TravelService;
import com.zlw.service.UserService;
import com.zlw.util.UserUtil;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/backstage/admin/")
public class AdminController {

    @Resource(name = "userService")
    private UserService userService;

    @Resource(name = "catalogService")
    private CatalogService catalogService;

    @Resource(name = "travelService")
    private TravelService travelService;

    @Resource(name = "orderService")
    private OrderService orderService;

    @RequestMapping("to-self-info-update")
    public String toSelfInfoUpdate(Map<String,Object> map){
        return "houtai/info-update";
    }

    @RequestMapping("self-info-update")
    public String selfInfoUpdate(Map<String,Object> map, User user, HttpSession session){
        System.out.println(user);
        if(null == user.getNick_name()||"".equals(user.getNick_name().trim())){
            map.put("msg","请输入正确的信息！！！");
            return "forward:to-self-info-update";
        }
        if(null == user.getTellphone()||"".equals(user.getTellphone().trim())){
            map.put("msg","请输入正确的信息！！！");
            return "forward:to-self-info-update";
        }
        if(null == user.getAddress()||"".equals(user.getAddress().trim())){
            map.put("msg","请输入正确的信息！！！");
            return "forward:to-self-info-update";
        }
        if(null == user.getId_card()||"".equals(user.getId_card().trim())){
            map.put("msg","请输入正确的信息！！！");
            return "forward:to-self-info-update";
        }
        if(null == user.getSex()||"".equals(user.getSex())){
            map.put("msg","请输入正确的信息！！！");
            return "forward:to-self-info-update";
        }
        userService.editByUserName(user);
        session.setAttribute("admin",userService.getUserByAdmin(user.getUsername()));
        map.put("msg","信息修改完成");
        return "forward:to-self-info-update";
    }

    @RequestMapping("to-self-password-update")
    private String toSelfPasswordUpdate (){
        return "houtai/password-update";
    }


    @RequestMapping("self-password-update")
    private String selfPasswordUpdate (Map<String,Object> map, User user, HttpSession session, @RequestParam String rePassword){
//        System.out.println(user.toString());
        if (null==user.getPassword()||"".equals(user.getPassword().trim())){
            map.put("msg","请输入正确的信息！！！");
            return "forward:to-self-password-update";
        }
        if (null==rePassword||"".equals(rePassword.trim())){
            map.put("msg","请输入正确的信息！！！");
            return "forward:to-self-password-update";
        }
        if (!UserUtil.getInstance().equals(user.getPassword(),rePassword)){
            map.put("msg","密码输入不一致！！！请重新输入");
            return "forward:to-self-password-update";
        }
        userService.editByUserName(user);
        session.setAttribute("admin",userService.getUserByAdmin(user.getUsername()));
        map.put("msg","密码修改完成！！！！！");
        return "houtai/password-update";
    }
    @RequestMapping("index")
    public String index(Map<String,Object> map){
        map.put("catalos",catalogService.getAll());
        return "houtai/index";
    }

    @RequestMapping("to-catalog-edit")
    private String toCatalogEdit(Map<String,Object> map,@RequestParam Integer id){
        map.put("catalog",catalogService.getOne(id));
        return "houtai/catalog_edit";
    }

    @RequestMapping("catalog-edit")
    private String catalogEdit(Map<String,Object> map, Catalog catalog){
        if (null==catalog){
            map.put("msg","输入信息错误，请重新输入！！！");
            return "forward:to-catalog-edit";
        }
        if(null==catalog.getId()){
            map.put("msg","输入信息错误，请重新输入！！！");
            return "forward:to-catalog-edit";
        }
        if(null==catalog.getTitle()||"".equals(catalog.getTitle().trim())){
            map.put("msg","输入信息错误，请重新输入！！！");
            return "forward:to-catalog-edit";
        }
        catalogService.edit(catalog);
        map.put("msg","修改信息完成！！！");
        return "redirect:catalog-list";
    }

    @RequestMapping("to-catalog-add")
    private String toCatalogAdd(Map<String,Object> map, Catalog catalog){
        return "houtai/catalog_add";
    }

    @RequestMapping("catalog-remove")
    private String toCatalogRemove(Map<String,Object> map, @RequestParam(required = false) Integer id){
        catalogService.removeOne(id);
        return "redirect:catalog-list";
    }

    @RequestMapping("catalog-add")
    private String catalogAdd(Map<String,Object> map, Catalog catalog){
        if (null == catalog){
            map.put("msg","输入信息错误，请重新输入！！！");
            return "forward:to-catalog-add";
        }
        if (null == catalog||"".equals(catalog.getTitle().trim())){
            map.put("msg","输入信息错误，请重新输入！！！");
            return "forward:to-catalog-add";
        }
        catalogService.addOne(catalog);
        map.put("msg","数据添加成功！！！");
        return "forward:catalog-list";
    }

    @RequestMapping("catalog-list")
    private String catalogList(Map<String,Object> map, Catalog catalog,@RequestParam(required = false) Integer pageNum){
        if (null==pageNum||pageNum==0){
            pageNum = 1;
        }
        PageHelper.startPage(pageNum,5);
        PageInfo pageInfo = PageInfo.of(catalogService.getAll());
        map.put("pageInfo",pageInfo);
        return "houtai/catalog_list";
    }

    @RequestMapping("to-travel-add")
    private String toTravelAdd(Map<String,Object> map){
        map.put("catalogs",catalogService.getAll());
        return "houtai/travel_add";
    }

    @RequestMapping("travel-add")
    private String travelAdd(Map<String,Object> map, HttpServletRequest request){
        Travel travel = null;
        try {
            travel =travelBuilder(request);
        } catch (FileUploadException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
//        System.out.println(travel.toString());
        travelService.addTravel(travel);
        return "redirect:travel-list";
    }

    @RequestMapping("travel-list")
    private String travelList(Map<String,Object> map,@RequestParam(required = false) Integer pageNum){
        if(null==pageNum||pageNum==0){
            pageNum = 1;
        }
        PageHelper.startPage(pageNum,10);
        PageInfo pageInfo = PageInfo.of(travelService.getList());
        map.put("pageInfo",pageInfo);
        return "houtai/travel_list";
    }
    @RequestMapping("to-travel-edit")
    private String toTravelEdit(Map<String,Object> map,@RequestParam(required = false) Integer id){
        map.put("travel",travelService.getById(id));
        map.put("catalogs",catalogService.getAll());
        return "houtai/travel_edit";
    }

    @RequestMapping("travel-edit")
    private String travelEdit(Map<String,Object> map, HttpServletRequest request){
        Travel travel = null;
        try {
            travel =travelBuilder(request);
        } catch (FileUploadException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
        System.out.println(travel.toString());
        travelService.edit(travel);
        return "redirect:travel-list";
    }

    @RequestMapping("travel-detail")
    private String travelDetail(Map<String,Object> map,@RequestParam(required = false) Integer id){
        map.put("travel",travelService.getById(id));
        System.out.println(travelService.getById(id));
        map.put("catalogs",catalogService.getAll());
        return "houtai/travel_detail";
    }

    @RequestMapping("travel-remove")
    private String travelRemove(Map<String,Object> map, @RequestParam(required = false) Integer id){
        travelService.remove(id);
        return "redirect:travel-list";
    }

    @RequestMapping("order-list")
    private String orderList(Map<String,Object> map,@RequestParam(required = false) Integer pageNum){
        if (null==pageNum||0==pageNum){
            pageNum=1;
        }
        PageHelper.startPage(pageNum,10);
        PageInfo pageInfo = PageInfo.of(orderService.getAll());
        map.put("pageInfo",pageInfo);
        return "houtai/order_list";
    }
    @RequestMapping("play-order")
    private String playOrder(Map<String,Object> map,@RequestParam(required = false) Integer id){
        Order order = orderService.getById(id);
        order.setIsPlay(1);
        orderService.edit(order);
        return "redirect:order-list";
    }

    private Travel travelBuilder(HttpServletRequest request) throws FileUploadException, IOException {
        Travel travel = new Travel();
        FileItemFactory factory = new DiskFileItemFactory();
        ServletFileUpload upload = new ServletFileUpload(factory);
        List<FileItem> list = upload.parseRequest(request);
        for(FileItem item:list){
            if(item.isFormField()){
                if(item.getFieldName().equals("title")){
                    travel.setTitle(item.getString("UTF-8"));
                }
                if(item.getFieldName().equals("content")){
                    travel.setContent(item.getString("UTF-8"));
                }
                if(item.getFieldName().equals("info")){
                    travel.setInfo(item.getString("UTF-8"));
                }
                if(item.getFieldName().equals("destination")){
                    travel.setDestination(item.getString("UTF-8"));
                }
                if(item.getFieldName().equals("catalogId")){
                    travel.setCatalogId(Integer.parseInt(item.getString("UTF-8")));
                }
                if(item.getFieldName().equals("price")){
                    travel.setPrice(Double.parseDouble(item.getString("UTF-8")));
                }
                if(item.getFieldName().equals("imagePath")&&travel.getImgPath()==null){
                    travel.setImgPath(item.getString("UTF-8"));
                }
                if(item.getFieldName().equals("discount")){
                    travel.setDiscount(Double.parseDouble(item.getString("UTF-8")));
                }
                if(item.getFieldName().equals("cost")){
                    travel.setCost(Double.parseDouble(item.getString("UTF-8")));
                }
                if(item.getFieldName().equals("id")){
                    travel.setId(Integer.parseInt(item.getString("UTF-8")));
                }
            }else{
                if(item.getFieldName().equals("imgPath")){
                    if(item.getSize()<=100) continue;
                    //获取项目的绝对路径
                    String rootPath = request.getServletContext().getRealPath("/");
                    String path = item.getName();
                    String type = ".jpg";
                    if(path.indexOf(".")!=-1){
                        type = path.substring(path.lastIndexOf("."));
                    }
                    path = "/images/"+System.currentTimeMillis()+type;
                    InputStream inputStream = item.getInputStream();
                    FileOutputStream fileOutputStream = new FileOutputStream(rootPath+path);
                    int len=0;
                    byte[] b = new byte[1024*1024];
                    while ((len=inputStream.read(b))!=-1){
                        fileOutputStream.write(b,0,len);
                    }
                    travel.setImgPath(path);
                }
            }
        }
        return travel;
    }
}
