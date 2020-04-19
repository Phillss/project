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
        String pass=MD5salt("123456","chenchen",1024);
        System.out.println(pass);//51cb0e70966577f06942e8e4b3c8ff94
    }
}
