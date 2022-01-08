.class public Lorg/bitcoinj/crypto/TrustStoreLoader$DefaultTrustStoreLoader;
.super Ljava/lang/Object;
.source "TrustStoreLoader.java"

# interfaces
.implements Lorg/bitcoinj/crypto/TrustStoreLoader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/crypto/TrustStoreLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultTrustStoreLoader"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private loadFallbackStore()Ljava/security/KeyStore;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 95
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "cacerts"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    const-string v1, "JKS"

    const-string v2, "changeit"

    invoke-static {v1, v2, v0}, Lorg/bitcoinj/crypto/X509Utils;->loadKeyStore(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Ljava/security/KeyStore;

    move-result-object v0

    return-object v0
.end method

.method private loadIcsKeyStore()Ljava/security/KeyStore;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    :try_start_0
    const-string v0, "AndroidCAStore"

    .line 84
    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    const/4 v1, 0x0

    .line 85
    invoke-virtual {v0, v1, v1}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 90
    new-instance v1, Ljava/security/KeyStoreException;

    invoke-direct {v1, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 88
    new-instance v1, Ljava/security/KeyStoreException;

    invoke-direct {v1, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public getKeyStore()Ljava/security/KeyStore;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 45
    sget-object v0, Lorg/bitcoinj/crypto/TrustStoreLoader$DefaultTrustStoreLoader;->DEFAULT_KEYSTORE_TYPE:Ljava/lang/String;

    :try_start_0
    const-string v1, "android.os.Build$VERSION"

    .line 48
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "SDK_INT"

    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    .line 51
    invoke-direct {p0}, Lorg/bitcoinj/crypto/TrustStoreLoader$DefaultTrustStoreLoader;->loadIcsKeyStore()Ljava/security/KeyStore;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "BKS"

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "java.home"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/etc/security/cacerts.bks"

    const/16 v3, 0x2f

    sget-char v4, Ljava/io/File;->separatorChar:C

    .line 55
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 62
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 60
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    const-string v1, "javax.net.ssl.trustStore"

    .line 65
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    if-nez v1, :cond_2

    .line 68
    invoke-direct {p0}, Lorg/bitcoinj/crypto/TrustStoreLoader$DefaultTrustStoreLoader;->loadFallbackStore()Ljava/security/KeyStore;

    move-result-object v0

    return-object v0

    :cond_2
    :try_start_1
    const-string v2, "changeit"

    .line 71
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2, v3}, Lorg/bitcoinj/crypto/X509Utils;->loadKeyStore(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Ljava/security/KeyStore;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3

    return-object v0

    .line 76
    :catch_3
    invoke-direct {p0}, Lorg/bitcoinj/crypto/TrustStoreLoader$DefaultTrustStoreLoader;->loadFallbackStore()Ljava/security/KeyStore;

    move-result-object v0

    return-object v0
.end method
