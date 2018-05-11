package com.renbaojia.shiro.realms;

import java.util.HashSet;
import java.util.Set;


import com.renbaojia.model.User;
import com.renbaojia.service.UserService;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.crypto.hash.SimpleHash;
import org.apache.shiro.realm.AuthenticatingRealm;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.util.ByteSource;
import org.springframework.beans.factory.annotation.Autowired;

public class ShiroRealm extends AuthenticatingRealm {
    @Autowired
    UserService userService;

    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(
            AuthenticationToken token) {

        System.out.println("[FirstRealm] doGetAuthenticationInfo");

        //1. 把 AuthenticationToken 转换为 UsernamePasswordToken
        UsernamePasswordToken upToken = (UsernamePasswordToken) token;
        String username = upToken.getUsername();
        char[] password = upToken.getPassword();
        if (password.length == 32) {
            return null;
        }
        if (username.length() != 11) {
            return null;
        }
        if (!userService.checkUser(username)) {
            throw new UnknownAccountException("用户不存在");
        }
        User user = userService.getUser(username);
        Object principal = user.getUsername();
        //2). credentials: 密码.
        Object credentials = user.getPassword(); //"fc1709d0a95a6be30bc5926fdb7f22f4";
        //3). realmName: 当前 realm 对象的 name. 调用父类的 getName() 方法即可
        String realmName = getName();
        //4). 盐值.
        ByteSource credentialsSalt = ByteSource.Util.bytes(username);
        SimpleAuthenticationInfo info = null; //new SimpleAuthenticationInfo(principal, credentials, realmName);
        info = new SimpleAuthenticationInfo(principal, credentials, credentialsSalt, realmName);
        return info;
    }


//    @Override
//    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
//        Object principal = principals.getPrimaryPrincipal();
//        User user = (User) principal;
//        User user1 = userService.getUser(((User) principal).getPhone());
//        String permissions = user1.getPermissions();
//        Set<String> roles = new HashSet<>();
//        roles.add(permissions);
//        //3. 创建 SimpleAuthorizationInfo, 并设置其 reles 属性.
//        SimpleAuthorizationInfo info = new SimpleAuthorizationInfo(roles);
//        //4. 返回 SimpleAuthorizationInfo 对象.
//        return info;
//    }

}