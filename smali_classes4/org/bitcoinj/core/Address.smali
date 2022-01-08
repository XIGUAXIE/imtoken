.class public Lorg/bitcoinj/core/Address;
.super Lorg/bitcoinj/core/VersionedChecksummedBytes;
.source "Address.java"


# static fields
.field public static final LENGTH:I = 0x14


# instance fields
.field private transient params:Lorg/bitcoinj/core/NetworkParameters;


# direct methods
.method public constructor <init>(Lorg/bitcoinj/core/NetworkParameters;I[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/WrongNetworkException;
        }
    .end annotation

    .line 58
    invoke-direct {p0, p2, p3}, Lorg/bitcoinj/core/VersionedChecksummedBytes;-><init>(I[B)V

    .line 59
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    array-length p3, p3

    const/16 v0, 0x14

    if-ne p3, v0, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    const-string v0, "Addresses are 160-bit hashes, so you must provide 20 bytes"

    invoke-static {p3, v0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 61
    invoke-static {p1, p2}, Lorg/bitcoinj/core/Address;->isAcceptableVersion(Lorg/bitcoinj/core/NetworkParameters;I)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 63
    iput-object p1, p0, Lorg/bitcoinj/core/Address;->params:Lorg/bitcoinj/core/NetworkParameters;

    return-void

    .line 62
    :cond_1
    new-instance p3, Lorg/bitcoinj/core/WrongNetworkException;

    invoke-virtual {p1}, Lorg/bitcoinj/core/NetworkParameters;->getAcceptableAddressCodes()[I

    move-result-object p1

    invoke-direct {p3, p2, p1}, Lorg/bitcoinj/core/WrongNetworkException;-><init>(I[I)V

    throw p3
.end method

.method public constructor <init>(Lorg/bitcoinj/core/NetworkParameters;Ljava/lang/String;)V
    .locals 3
    .param p1    # Lorg/bitcoinj/core/NetworkParameters;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/AddressFormatException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 110
    invoke-direct {p0, p2}, Lorg/bitcoinj/core/VersionedChecksummedBytes;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 112
    iget p2, p0, Lorg/bitcoinj/core/Address;->version:I

    invoke-static {p1, p2}, Lorg/bitcoinj/core/Address;->isAcceptableVersion(Lorg/bitcoinj/core/NetworkParameters;I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 115
    iput-object p1, p0, Lorg/bitcoinj/core/Address;->params:Lorg/bitcoinj/core/NetworkParameters;

    goto :goto_0

    .line 113
    :cond_0
    new-instance p2, Lorg/bitcoinj/core/WrongNetworkException;

    iget v0, p0, Lorg/bitcoinj/core/Address;->version:I

    invoke-virtual {p1}, Lorg/bitcoinj/core/NetworkParameters;->getAcceptableAddressCodes()[I

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lorg/bitcoinj/core/WrongNetworkException;-><init>(I[I)V

    throw p2

    :cond_1
    const/4 p1, 0x0

    .line 118
    invoke-static {}, Lorg/bitcoinj/params/Networks;->get()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bitcoinj/core/NetworkParameters;

    .line 119
    iget v2, p0, Lorg/bitcoinj/core/Address;->version:I

    invoke-static {v1, v2}, Lorg/bitcoinj/core/Address;->isAcceptableVersion(Lorg/bitcoinj/core/NetworkParameters;I)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object p1, v1

    :cond_3
    if-eqz p1, :cond_4

    .line 127
    iput-object p1, p0, Lorg/bitcoinj/core/Address;->params:Lorg/bitcoinj/core/NetworkParameters;

    :goto_0
    return-void

    .line 125
    :cond_4
    new-instance p1, Lorg/bitcoinj/core/AddressFormatException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No network found for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/bitcoinj/core/AddressFormatException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/bitcoinj/core/NetworkParameters;[B)V
    .locals 1

    .line 102
    invoke-virtual {p1}, Lorg/bitcoinj/core/NetworkParameters;->getAddressHeader()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lorg/bitcoinj/core/VersionedChecksummedBytes;-><init>(I[B)V

    .line 103
    array-length p2, p2

    const/16 v0, 0x14

    if-ne p2, v0, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const-string v0, "Addresses are 160-bit hashes, so you must provide 20 bytes"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 104
    iput-object p1, p0, Lorg/bitcoinj/core/Address;->params:Lorg/bitcoinj/core/NetworkParameters;

    return-void
.end method

.method public static fromBase58(Lorg/bitcoinj/core/NetworkParameters;Ljava/lang/String;)Lorg/bitcoinj/core/Address;
    .locals 1
    .param p0    # Lorg/bitcoinj/core/NetworkParameters;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/AddressFormatException;
        }
    .end annotation

    .line 93
    new-instance v0, Lorg/bitcoinj/core/Address;

    invoke-direct {v0, p0, p1}, Lorg/bitcoinj/core/Address;-><init>(Lorg/bitcoinj/core/NetworkParameters;Ljava/lang/String;)V

    return-object v0
.end method

.method public static fromP2SHHash(Lorg/bitcoinj/core/NetworkParameters;[B)Lorg/bitcoinj/core/Address;
    .locals 2

    .line 69
    :try_start_0
    new-instance v0, Lorg/bitcoinj/core/Address;

    invoke-virtual {p0}, Lorg/bitcoinj/core/NetworkParameters;->getP2SHHeader()I

    move-result v1

    invoke-direct {v0, p0, v1, p1}, Lorg/bitcoinj/core/Address;-><init>(Lorg/bitcoinj/core/NetworkParameters;I[B)V
    :try_end_0
    .catch Lorg/bitcoinj/core/WrongNetworkException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 71
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static fromP2SHScript(Lorg/bitcoinj/core/NetworkParameters;Lorg/bitcoinj/script/Script;)Lorg/bitcoinj/core/Address;
    .locals 2

    .line 77
    invoke-virtual {p1}, Lorg/bitcoinj/script/Script;->isPayToScriptHash()Z

    move-result v0

    const-string v1, "Not a P2SH script"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 78
    invoke-virtual {p1}, Lorg/bitcoinj/script/Script;->getPubKeyHash()[B

    move-result-object p1

    invoke-static {p0, p1}, Lorg/bitcoinj/core/Address;->fromP2SHHash(Lorg/bitcoinj/core/NetworkParameters;[B)Lorg/bitcoinj/core/Address;

    move-result-object p0

    return-object p0
.end method

.method public static getParametersFromAddress(Ljava/lang/String;)Lorg/bitcoinj/core/NetworkParameters;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/AddressFormatException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 166
    :try_start_0
    invoke-static {v0, p0}, Lorg/bitcoinj/core/Address;->fromBase58(Lorg/bitcoinj/core/NetworkParameters;Ljava/lang/String;)Lorg/bitcoinj/core/Address;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bitcoinj/core/Address;->getParameters()Lorg/bitcoinj/core/NetworkParameters;

    move-result-object p0
    :try_end_0
    .catch Lorg/bitcoinj/core/WrongNetworkException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 168
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static isAcceptableVersion(Lorg/bitcoinj/core/NetworkParameters;I)Z
    .locals 4

    .line 176
    invoke-virtual {p0}, Lorg/bitcoinj/core/NetworkParameters;->getAcceptableAddressCodes()[I

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p0, v2

    if-ne p1, v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 200
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 201
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/bitcoinj/core/NetworkParameters;->fromID(Ljava/lang/String;)Lorg/bitcoinj/core/NetworkParameters;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/core/Address;->params:Lorg/bitcoinj/core/NetworkParameters;

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 195
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 196
    iget-object v0, p0, Lorg/bitcoinj/core/Address;->params:Lorg/bitcoinj/core/NetworkParameters;

    iget-object v0, v0, Lorg/bitcoinj/core/NetworkParameters;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 44
    invoke-virtual {p0}, Lorg/bitcoinj/core/Address;->clone()Lorg/bitcoinj/core/Address;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/bitcoinj/core/Address;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 189
    invoke-super {p0}, Lorg/bitcoinj/core/VersionedChecksummedBytes;->clone()Lorg/bitcoinj/core/VersionedChecksummedBytes;

    move-result-object v0

    check-cast v0, Lorg/bitcoinj/core/Address;

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/bitcoinj/core/VersionedChecksummedBytes;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 44
    invoke-virtual {p0}, Lorg/bitcoinj/core/Address;->clone()Lorg/bitcoinj/core/Address;

    move-result-object v0

    return-object v0
.end method

.method public getHash160()[B
    .locals 1

    .line 133
    iget-object v0, p0, Lorg/bitcoinj/core/Address;->bytes:[B

    return-object v0
.end method

.method public getParameters()Lorg/bitcoinj/core/NetworkParameters;
    .locals 1

    .line 154
    iget-object v0, p0, Lorg/bitcoinj/core/Address;->params:Lorg/bitcoinj/core/NetworkParameters;

    return-object v0
.end method

.method public isP2SHAddress()Z
    .locals 2

    .line 141
    invoke-virtual {p0}, Lorg/bitcoinj/core/Address;->getParameters()Lorg/bitcoinj/core/NetworkParameters;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 142
    iget v1, p0, Lorg/bitcoinj/core/Address;->version:I

    iget v0, v0, Lorg/bitcoinj/core/NetworkParameters;->p2shHeader:I

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
