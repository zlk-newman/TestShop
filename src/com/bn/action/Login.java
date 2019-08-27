package com.bn.action;
import com.bn.dao.ManagerDao;
import com.bn.dao.MerchantDao;
import com.opensymphony.xwork2.ActionSupport;
import com.bn.dao.UserDao;
public class Login extends ActionSupport {
    private String Type;
    public String getType() {
        return Type;
    }
    public void setType(String Type) {this.Type = Type; }

    private String Username;
    public String getUsername() {
        return Username;
    }
    public void setUsername(String Username) {
        this.Username = Username;
    }

    private String Password;
    public String getPassword() {
        return Password;
    }
    public void setPassword(String Password) {
        this.Password = Password;
    }

    //验证登录
    public String execute(){
        if("3".equals(Type))
        {
            if (null == new UserDao().CheckLogin(Username, Password)) {
                return INPUT;
            }
            else
            {
                return SUCCESS;
            }
        }else if("2".equals(Type))
        {
            if (null == new MerchantDao().CheckLogin(Username, Password)) {
                return INPUT;
            }
            else
            {
                return LOGIN;
            }
        }else
        {
            if (null == new ManagerDao().CheckLogin(Username, Password)) {
                return INPUT;
            }
            else
            {
                return NONE;
            }
        }
    }
}
