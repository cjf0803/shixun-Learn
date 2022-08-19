package com.neu.user.config;

import org.apache.shiro.spring.web.ShiroFilterFactoryBean;
import org.apache.shiro.web.mgt.DefaultWebSecurityManager;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import java.util.LinkedHashMap;
import java.util.Map;

@Configuration
public class ShiroConfig {
    @Bean
    public ShiroFilterFactoryBean shiroFilterFactoryBean(@Qualifier("securityManager") DefaultWebSecurityManager securityManager){
        //提供具体的是实现
        ShiroFilterFactoryBean bean=new ShiroFilterFactoryBean();
        //设置安全管理
        bean.setSecurityManager(securityManager);
        //添加shiro的内置过滤器
        /*
         *   anon:无需认证就可以访问
         *   authc；必须认证才能访问
         *   perms:拥有对某个资源的权限
         * */

        //创建map

        Map<String,String> map=new LinkedHashMap<String,String>();
        //所有人都可以访问
        map.put("/user/add","anon");
        //必须认证才能访问
        map.put("/user/update","authc");
        //虽然认证了但是没有成功，user:update不能进入，要进入无权限页面除非授权
        map.put("/user/update","perms[update]");
        bean.setFilterChainDefinitionMap(map);
        //去登录页面
        bean.setLoginUrl("/user/toLogin");
        bean.setUnauthorizedUrl("/user/noauth");
        return  bean;



    }

    @Bean(name="securityManager")
    public DefaultWebSecurityManager defaultWebSecurityManager(@Qualifier("userRealm") UserRealm userRealm){
        DefaultWebSecurityManager securityManager=new DefaultWebSecurityManager();
        securityManager.setRealm(userRealm);
        return securityManager;
    }

    @Bean(name="userRealm")
    public UserRealm userRealm(){
        return new UserRealm();
    }
}
