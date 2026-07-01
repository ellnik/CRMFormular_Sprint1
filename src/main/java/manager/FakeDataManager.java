package manager;

import java.util.ArrayList;
import java.util.List;

import bean.TaskBean;

public class FakeDataManager {

    public List<TaskBean> getTasks() {

        List<TaskBean> list = new ArrayList<>();

        list.add(new TaskBean(1, "Java lernen"));
        list.add(new TaskBean(2, "JSP lernen"));
        list.add(new TaskBean(3, "Servlet lernen"));
        list.add(new TaskBean(4, "HTML lernen"));

        return list;
    }

}