package com.opera.mini.android;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.math.BigInteger;
import java.security.GeneralSecurityException;
import java.security.KeyFactory;
import java.security.Signature;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.RSAPublicKeySpec;

/* compiled from: Source */
public final class bp {
    public static boolean Code(InputStream inputStream, String str, String str2) {
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
            RSAPublicKeySpec rSAPublicKeySpec = new RSAPublicKeySpec(new BigInteger(bufferedReader.readLine()), new BigInteger(bufferedReader.readLine()));
            Signature instance = Signature.getInstance("SHA1withRSA");
            instance.initVerify((RSAPublicKey) KeyFactory.getInstance("RSA").generatePublic(rSAPublicKeySpec));
            instance.update(str.getBytes());
            return instance.verify(Code(str2));
        } catch (IOException | GeneralSecurityException e) {
            return false;
        }
    }

    private static byte[] Code(String str) {
        if (str.length() != 512) {
            return null;
        }
        char[] charArray = str.toCharArray();
        int length = charArray.length / 2;
        byte[] bArr = new byte[length];
        for (int i = 0; i < length; i++) {
            int digit = Character.digit(charArray[i * 2], 16);
            int digit2 = Character.digit(charArray[(i * 2) + 1], 16);
            if (digit == -1 || digit2 == -1) {
                return null;
            }
            bArr[i] = (byte) ((digit << 4) | digit2);
        }
        return bArr;
    }
}
