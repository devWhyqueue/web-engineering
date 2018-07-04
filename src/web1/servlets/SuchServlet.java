package web1.servlets;

import web1.service.SeminarSuchtreffer;
import web1.service.SuchService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/results")
public class SuchServlet extends HttpServlet {
    private SuchService suchService = new SuchService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String semtitle = req.getParameter("semtitle");
        String semlead = req.getParameter("semlead");
        SeminarSuchtreffer[] results  = suchService.search(semtitle, semlead);

        try(PrintWriter out = resp.getWriter()){
            out.write("<!DOCTYPE html>\n" +
                    "<html lang=\"de\" dir=\"ltr\">\n" +
                    "\n" +
                    "<head>\n" +
                    "  <meta charset=\"utf-8\">\n" +
                    "  <title>Suchergebnisse</title>\n" +
                    "</head>\n" +
                    "\n" +
                    "<body>\n" +
                    "    <header>\n" +
                    "      <h1>Suchergebnisse</h1>\n" +
                    "    </header>\n" +
                    "    <main>\n");
            out.write("      <p>" + results.length + " Seminare zu den Suchbegriffen \"" + semtitle + "\" und \"" + semlead + "\" gefunden." + "</p>\n");
            out.write("      <ol>\n");
            for(SeminarSuchtreffer r : results){
                out.write("        <li>" + r.getTitel() + " (" + r.getSeminarleiter() + ")" + "</li>\n");
            }
            out.write("      </ol>\n" +
                    "    </main>\n" +
                    "</body>\n" +
                    "\n" +
                    "</html>");
        }
    }
}
