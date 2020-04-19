package com.shiros;

import com.Domains.User;
import com.dao.userMapper;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.util.ByteSource;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.HashSet;
import java.util.Set;

public class loginRealm extends AuthorizingRealm {

    @Autowired
    userMapper usermapper;

    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {
        User user=(User)principalCollection.getPrimaryPrincipal();
        SimpleAuthorizationInfo authorizationInfo=new SimpleAuthorizationInfo();
        Set<String> set=new HashSet<String>();
        User repositoryUser=usermapper.selectAUserByName(user.getUserName());
        String role=repositoryUser.getUserIdentity();
//        String permission=repositoryUser.getUserCondition();
        authorizationInfo.addRole(role);
//        set.add(permission);
//        authorizationInfo.setStringPermissions(set);
        return authorizationInfo;
    }

    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authenticationToken) throws AuthenticationException {
        UsernamePasswordToken token= (UsernamePasswordToken)authenticationToken;
        String username=token.getUsername();
        User userRepository=usermapper.selectAUserByName(username);
        if(userRepository==null){
            throw new UnknownAccountException("账户不存在");
        }
        String hashedCredentials=userRepository.getUserPassword();
        ByteSource salt=ByteSource.Util.bytes(username);
        User user=new User();
        user.setUserName(username);
        SimpleAuthenticationInfo authenticationInfo=new SimpleAuthenticationInfo(user,hashedCredentials,salt,getName());
        return authenticationInfo;
    }
}
