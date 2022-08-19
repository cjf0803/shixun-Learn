package com.neu.user.config;

import com.neu.user.biz.UserBiz;
import com.neu.user.entity.User;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;

public class UserRealm extends AuthorizingRealm {
    @Autowired
    private UserBiz userBiz;
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {

        System.out.println("执行授权doGetAuthorizationInfo");
        SimpleAuthorizationInfo info=new SimpleAuthorizationInfo();
        //进行授权
        /*info.addStringPermission("update");*/
        //拿到当前的登录对象
        Subject su= SecurityUtils.getSubject();
        User currentUser= (User) su.getPrincipal();
        //设置当前用户权限
        info.addStringPermission(currentUser.getPerm());


        return info;
    }

    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authenticationToken) throws AuthenticationException {
        System.out.println("执行认证doGetAuthenticationInfo");
        /*String name="admin";
        String password="123";*/

        //获取封装好的token中的数据
        UsernamePasswordToken userToken=(UsernamePasswordToken)authenticationToken;
        User user=userBiz.login(userToken.getUsername(),"123");
        //进行比较
        if(user==null){
            return null;
        }
        //密码认证shiro自己去做，防止密码泄露,第一个参数是u对象 ，上面授权的时候可以获取该对象
        return new SimpleAuthenticationInfo(user,user.getUpwd(),"");
    }
}
