.class public Lorg/spongycastle/crypto/tls/ServerName;
.super Ljava/lang/Object;
.source "ServerName.java"


# instance fields
.field protected name:Ljava/lang/Object;

.field protected nameType:S


# direct methods
.method public constructor <init>(SLjava/lang/Object;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-static {p1, p2}, Lorg/spongycastle/crypto/tls/ServerName;->isCorrectType(SLjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21
    iput-short p1, p0, Lorg/spongycastle/crypto/tls/ServerName;->nameType:S

    .line 22
    iput-object p2, p0, Lorg/spongycastle/crypto/tls/ServerName;->name:Ljava/lang/Object;

    return-void

    .line 18
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "\'name\' is not an instance of the correct type"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected static isCorrectType(SLjava/lang/Object;)Z
    .locals 0

    if-nez p0, :cond_0

    .line 107
    instance-of p0, p1, Ljava/lang/String;

    return p0

    .line 109
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'name\' is an unsupported value"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static parse(Ljava/io/InputStream;)Lorg/spongycastle/crypto/tls/ServerName;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->readUint8(Ljava/io/InputStream;)S

    move-result v0

    const/16 v1, 0x32

    if-nez v0, :cond_1

    .line 87
    invoke-static {p0}, Lorg/spongycastle/crypto/tls/TlsUtils;->readOpaque16(Ljava/io/InputStream;)[B

    move-result-object p0

    .line 88
    array-length v2, p0

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    .line 92
    invoke-static {p0}, Lorg/spongycastle/util/Strings;->fromUTF8ByteArray([B)Ljava/lang/String;

    move-result-object p0

    .line 99
    new-instance v1, Lorg/spongycastle/crypto/tls/ServerName;

    invoke-direct {v1, v0, p0}, Lorg/spongycastle/crypto/tls/ServerName;-><init>(SLjava/lang/Object;)V

    return-object v1

    .line 90
    :cond_0
    new-instance p0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p0

    .line 96
    :cond_1
    new-instance p0, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p0, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p0
.end method


# virtual methods
.method public encode(Ljava/io/OutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    iget-short v0, p0, Lorg/spongycastle/crypto/tls/ServerName;->nameType:S

    invoke-static {v0, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeUint8(SLjava/io/OutputStream;)V

    .line 55
    iget-short v0, p0, Lorg/spongycastle/crypto/tls/ServerName;->nameType:S

    const/16 v1, 0x50

    if-nez v0, :cond_1

    .line 58
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/ServerName;->name:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lorg/spongycastle/util/Strings;->toUTF8ByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 59
    array-length v2, v0

    const/4 v3, 0x1

    if-lt v2, v3, :cond_0

    .line 63
    invoke-static {v0, p1}, Lorg/spongycastle/crypto/tls/TlsUtils;->writeOpaque16([BLjava/io/OutputStream;)V

    return-void

    .line 61
    :cond_0
    new-instance p1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1

    .line 66
    :cond_1
    new-instance p1, Lorg/spongycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {p1, v1}, Lorg/spongycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw p1
.end method

.method public getHostName()Ljava/lang/String;
    .locals 2

    .line 37
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/ServerName;->name:Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lorg/spongycastle/crypto/tls/ServerName;->isCorrectType(SLjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/ServerName;->name:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 39
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "\'name\' is not a HostName string"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getName()Ljava/lang/Object;
    .locals 1

    .line 32
    iget-object v0, p0, Lorg/spongycastle/crypto/tls/ServerName;->name:Ljava/lang/Object;

    return-object v0
.end method

.method public getNameType()S
    .locals 1

    .line 27
    iget-short v0, p0, Lorg/spongycastle/crypto/tls/ServerName;->nameType:S

    return v0
.end method
