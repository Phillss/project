package testj;

import org.apache.shiro.crypto.hash.SimpleHash;
import org.apache.shiro.util.ByteSource;
import org.junit.Test;

public class md5test {

    public String MD5salt(String pass, String user, int count) {
        String algorithmName = "MD5";
        Object source = pass;
        Object salt = ByteSource.Util.bytes(user);
        int hashIterations = count;
        Object result = new SimpleHash(algorithmName, source, salt, hashIterations);
        return result.toString();
    }

    @Test
    public void te(){
        String pass=MD5salt("123456","admin",1024);
        System.out.println(pass);//51cb0e70966577f06942e8e4b3c8ff94
    }

    @Test
    public void tu(){
        /*String s="helo ";
        System.out.println(s+s.length());
        System.out.println(s.trim()+s.trim().length());*/
        Object hashed=new SimpleHash("MD5","hello");
        System.out.println(hashed.toString());
    }
}
