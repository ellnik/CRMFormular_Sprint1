package bean;

import java.util.ArrayList;
import java.util.List;

public class TaskListBean {

    private List<TaskBean> list = new ArrayList<>();

    public List<TaskBean> getList() {
        return list;
    }

    public void setList(List<TaskBean> list) {
        this.list = list;
    }

}