package com.renbaojia.shiro.realms;

import com.renbaojia.model.Admin;
import com.renbaojia.model.User;
import com.renbaojia.service.AdminUserService;
import com.renbaojia.service.UserService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthenticatingRealm;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.util.ByteSource;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.HashSet;
import java.util.Set;

public class AdminShiroRealm extends AuthorizingRealm {
    @Autowired
    AdminUserService userService;

    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(
            AuthenticationToken token) {
        UsernamePasswordToken upToken = (UsernamePasswordToken) token;
        String username = upToken.getUsername();
        char[] password = upToken.getPassword();
        if (password.length == 32) {
            return null;
        }
        if (!userService.checkUser(username)) {
            throw new UnknownAccountException("用户不存在");

        }
        Admin admin = userService.getUser(username);
        Object principal = admin.getUsername();
        //2). credentials: 密码.
        Object credentials = admin.getPassword(); //"fc1709d0a95a6be30bc5926fdb7f22f4";
        //3). realmName: 当前 realm 对象的 name. 调用父类的 getName() 方法即可
        String realmName = getName();
        //4). 盐值.
        ByteSource credentialsSalt = ByteSource.Util.bytes(username);
        SimpleAuthenticationInfo info = null; //new SimpleAuthenticationInfo(principal, credentials, realmName);
        info = new SimpleAuthenticationInfo(principal, credentials, credentialsSalt, realmName);
        return info;
    }


    //授权会被 shiro 回调的方法
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(
            PrincipalCollection principals) {
        //1. 从 PrincipalCollection 中来获取登录用户的信息
        String admin   = (String) principals.getPrimaryPrincipal();
        //2. 利用登录的用户的信息来用户当前用户的角色或权限(可能需要查询数据库)
        Set<String> roles = new HashSet<>();
        if(admin.equals("admin")){
            roles.add("admin");
        }
        //3. 创建 SimpleAuthorizationInfo, 并设置其 reles 属性.
        SimpleAuthorizationInfo info = new SimpleAuthorizationInfo(roles);
        //4. 返回 SimpleAuthorizationInfo 对象.
        return info;
    }

}