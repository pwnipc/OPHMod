package com.begal.appclone.classes.util;

import android.util.Base64;
import java.io.IOException;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;

public class SimpleCrypt {
    private String mKey;

    public SimpleCrypt(String key) {
        this.mKey = key;
    }

    public String encrypt(String plainText) {
        try {
            return Base64.encodeToString(getCipher(1).doFinal(plainText.getBytes()), 0);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public byte[] encrypt(byte[] plainBytes) {
        try {
            return getCipher(1).doFinal(plainBytes);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public String decrypt(String encryptedText) throws IOException {
        try {
            return new String(getCipher(2).doFinal(Base64.decode(encryptedText, 0)));
        } catch (Exception e) {
            throw new IOException(e.toString());
        }
    }

    public byte[] decrypt(byte[] encryptedBytes) throws IOException {
        try {
            return getCipher(2).doFinal(encryptedBytes);
        } catch (Exception e) {
            throw new IOException(e.toString());
        }
    }

    private Cipher getCipher(int cipherMode) throws Exception {
        SecretKeySpec keySpecification = new SecretKeySpec(this.mKey.getBytes("UTF-8"), "AES");
        Cipher cipher = Cipher.getInstance("AES");
        cipher.init(cipherMode, keySpecification);
        return cipher;
    }
}
