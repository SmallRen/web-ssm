package com.renbaojia.shiro.realms;

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

import java.util.HashSet;
import java.util.Set;

public class MyShiroRealm extends AuthenticatingRealm {
    @Autowired
    UserService userService;

    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(
            AuthenticationToken token) throws AuthenticationException {
        //1. 把 AuthenticationToken 转换为 UsernamePasswordToken
        UsernamePasswordToken upToken = (UsernamePasswordToken) token;
        //2. 从 UsernamePasswordToken 中来获取 username
        String username = upToken.getUsername();
        char[] password = upToken.getPassword();
        if (password.length != 32) {
            return null;
        }
        User user = userService.getUser(username);
        Object credentials = user.getPassword(); //"fc1709d0a95a6be30bc5926fdb7f22f4";
        user.setPassword("");
        Object principal = user.getUsername();
        //2). credentials: 密码.
        //3). realmName: 当前 realm 对象的 name. 调用父类的 getName() 方法即可
        String realmName = getName();
        //4). 盐值.
        ByteSource credentialsSalt = ByteSource.Util.bytes(username);
        SimpleAuthenticationInfo info = null;
        info = new SimpleAuthenticationInfo(principal, credentials, realmName);
        return info;
    }

    public static void main(String[] args) {
        String hashAlgorithmName = "MD5";
        Object credentials = "12345678";
        Object salt = ByteSource.Util.bytes("18181005551");
        ;
        int hashIterations = 1024;
        Object result = new SimpleHash(hashAlgorithmName, credentials, salt, hashIterations);
        System.out.println(result);
    }

//    @Override
//    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
//        //1. 从 PrincipalCollection 中来获取登录用户的信息
//        Object principal = principals.getPrimaryPrincipal();
//        User user = (User) principal;
////        //2. 利用登录的用户的信息来用户当前用户的角色或权限(可能需要查询数据库)
////        Set<String> roles = new HashSet<>();
////        roles.add("user");
////        if("18181005550".equals(((User) principal).getPhone())){
////            roles.add("admin");
////        }
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