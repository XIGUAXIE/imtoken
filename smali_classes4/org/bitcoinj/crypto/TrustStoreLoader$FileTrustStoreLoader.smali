.class public Lorg/bitcoinj/crypto/TrustStoreLoader$FileTrustStoreLoader;
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
    name = "FileTrustStoreLoader"
.end annotation


# instance fields
.field private final path:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1    # Ljava/io/File;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iput-object p1, p0, Lorg/bitcoinj/crypto/TrustStoreLoader$FileTrustStoreLoader;->path:Ljava/io/File;

    return-void

    .line 104
    :cond_0
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getKeyStore()Ljava/security/KeyStore;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 110
    sget-object v0, Lorg/bitcoinj/crypto/TrustStoreLoader$FileTrustStoreLoader;->DEFAULT_KEYSTORE_TYPE:Ljava/lang/String;

    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lorg/bitcoinj/crypto/TrustStoreLoader$FileTrustStoreLoader;->path:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-string v2, "changeit"

    invoke-static {v0, v2, v1}, Lorg/bitcoinj/crypto/X509Utils;->loadKeyStore(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)Ljava/security/KeyStore;

    move-result-object v0

    return-object v0
.end method
