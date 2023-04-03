package ra.controller;

import ra.model.entity.Catalog;
import ra.model.service.CatalogService;
import ra.model.serviceImp.CatalogServiceImp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;

@WebServlet(name = "CatalogServlet", value = "/CatalogServlet")
public class CatalogServlet extends HttpServlet {
    private CatalogService<Catalog, Integer> catalogService = new CatalogServiceImp();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action != null && action.equals("Update")) {
            //Thuc hien lay thong tin sinh vien theo studentId
            int catagoriesID = Integer.parseInt((request.getParameter("catagoriesID")));
            Catalog catalogUpdate = catalogService.findById(catagoriesID);
            //Chuyen du lieu sang trang updateStudent.jsp
            request.setAttribute("catalogUpdate", catalogUpdate);
            request.getRequestDispatcher("views/admin/updateCatalog.jsp").forward(request, response);
        }

        else if (action != null && action.equalsIgnoreCase("Delete")) {
            //Thuc hien xoa sinh vien
            int catagoriesID = Integer.parseInt((request.getParameter("catagoriesID")));
            boolean result = catalogService.updateCatalogStatus(catagoriesID);
            if (result) {
                finAllCatalog(request, response);
            } else {
                request.getRequestDispatcher("/views/admin/error.jsp").forward(request, response);
            }
        }


        else if (action != null && action.equals("Search")) {
            String searchstring =request.getParameter("searchName");
            List<Catalog> listCatalog = catalogService.searchByName(searchstring);
            request.setAttribute("listCatalog", listCatalog);
            request.getRequestDispatcher("views/admin/category.jsp").forward(request, response);
        } else {
            finAllCatalog(request, response);
        }
    }
    public void finAllCatalog(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //Goi getAll cua StudentService
        List<Catalog> listCatalog = catalogService.findAll();
        //add vao request
        request.setAttribute("listCatalog",listCatalog );
        //chuyen du lieu sang students.jsp
        request.getRequestDispatcher("views/admin/category.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        //Lay thong tin tu request

        if (action != null && action.equals("Create")) {
            Catalog cat = new Catalog();
            cat.setCatagoriesName(request.getParameter("catagoriesName"));
            //Thuc hien them moi sinh vien
            boolean result = catalogService.save(cat);
            if (result) {
                finAllCatalog(request, response);

            } else {
                request.getRequestDispatcher("views/admin/error.jsp").forward(request, response);
            }
        } else if (action != null && action.equals("Update")) {
            Catalog cat = new Catalog();
            cat.setCatagoriesID(Integer.parseInt(request.getParameter("catagoriesID")));
            cat.setCatagoriesName(request.getParameter("catagoriesName"));
            cat.setCatagoriesStatus(Boolean.parseBoolean(request.getParameter("catalogStatus")));
            //Thuc hien cap nhat sinh vien
            boolean result = catalogService.update(cat);
            if (result) {
                finAllCatalog(request, response);
            } else {
                request.getRequestDispatcher("views/admin/error.jsp").forward(request, response);
            }
        }
    }
}