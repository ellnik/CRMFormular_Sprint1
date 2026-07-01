package servlet;

import java.io.IOException;

import bean.TaskListBean;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import manager.FakeDataManager;

@WebServlet("/IndexServlet")
public class IndexServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Проверяем, выбрана ли задача
        String task = request.getParameter("task");

        // Если задача выбрана, открываем форму
        if (task != null) {
            request.setAttribute("task", task);
            request.getRequestDispatcher("TaskForm.jsp").forward(request, response);
            return;
        }

        // Иначе показываем список задач
        FakeDataManager manager = new FakeDataManager();

        TaskListBean taskList = new TaskListBean();
        taskList.setList(manager.getTasks());

        request.setAttribute("taskList", taskList);

        request.getRequestDispatcher("TaskList.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        doGet(request, response);
    }
}