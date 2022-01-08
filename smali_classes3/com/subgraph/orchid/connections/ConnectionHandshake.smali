.class public abstract Lcom/subgraph/orchid/connections/ConnectionHandshake;
.super Ljava/lang/Object;
.source "ConnectionHandshake.java"


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field protected final connection:Lcom/subgraph/orchid/connections/ConnectionImpl;

.field private myAddress:Lcom/subgraph/orchid/data/IPv4Address;

.field private final remoteAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/subgraph/orchid/data/IPv4Address;",
            ">;"
        }
    .end annotation
.end field

.field private remoteTimestamp:I

.field protected final remoteVersions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected final socket:Ljavax/net/ssl/SSLSocket;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    const-class v0, Lcom/subgraph/orchid/connections/ConnectionHandshake;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/subgraph/orchid/connections/ConnectionHandshake;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Lcom/subgraph/orchid/connections/ConnectionImpl;Ljavax/net/ssl/SSLSocket;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/subgraph/orchid/connections/ConnectionHandshake;->connection:Lcom/subgraph/orchid/connections/ConnectionImpl;

    .line 48
    iput-object p2, p0, Lcom/subgraph/orchid/connections/ConnectionHandshake;->socket:Ljavax/net/ssl/SSLSocket;

    .line 49
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/subgraph/orchid/connections/ConnectionHandshake;->remoteVersions:Ljava/util/List;

    .line 50
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/subgraph/orchid/connections/ConnectionHandshake;->remoteAddresses:Ljava/util/List;

    return-void
.end method

.method static createHandshake(Lcom/subgraph/orchid/TorConfig;Lcom/subgraph/orchid/connections/ConnectionImpl;Ljavax/net/ssl/SSLSocket;)Lcom/subgraph/orchid/connections/ConnectionHandshake;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/ConnectionHandshakeException;
        }
    .end annotation

    .line 28
    invoke-interface {p0}, Lcom/subgraph/orchid/TorConfig;->getHandshakeV3Enabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-static {v0}, Lcom/subgraph/orchid/connections/ConnectionHandshakeV3;->sessionSupportsHandshake(Ljavax/net/ssl/SSLSession;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    new-instance p0, Lcom/subgraph/orchid/connections/ConnectionHandshakeV3;

    invoke-direct {p0, p1, p2}, Lcom/subgraph/orchid/connections/ConnectionHandshakeV3;-><init>(Lcom/subgraph/orchid/connections/ConnectionImpl;Ljavax/net/ssl/SSLSocket;)V

    return-object p0

    .line 30
    :cond_0
    invoke-interface {p0}, Lcom/subgraph/orchid/TorConfig;->getHandshakeV2Enabled()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 31
    new-instance p0, Lcom/subgraph/orchid/connections/ConnectionHandshakeV2;

    invoke-direct {p0, p1, p2}, Lcom/subgraph/orchid/connections/ConnectionHandshakeV2;-><init>(Lcom/subgraph/orchid/connections/ConnectionImpl;Ljavax/net/ssl/SSLSocket;)V

    return-object p0

    .line 33
    :cond_1
    new-instance p0, Lcom/subgraph/orchid/ConnectionHandshakeException;

    const-string p1, "No valid handshake type available for this connection"

    invoke-direct {p0, p1}, Lcom/subgraph/orchid/ConnectionHandshakeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private putIPv4Address(Lcom/subgraph/orchid/Cell;Lcom/subgraph/orchid/data/IPv4Address;)V
    .locals 1

    .line 107
    invoke-virtual {p2}, Lcom/subgraph/orchid/data/IPv4Address;->getAddressDataBytes()[B

    move-result-object p2

    const/4 v0, 0x4

    .line 108
    invoke-interface {p1, v0}, Lcom/subgraph/orchid/Cell;->putByte(I)V

    .line 109
    array-length v0, p2

    invoke-interface {p1, v0}, Lcom/subgraph/orchid/Cell;->putByte(I)V

    .line 110
    invoke-interface {p1, p2}, Lcom/subgraph/orchid/Cell;->putByteArray([B)V

    return-void
.end method

.method private putMyAddresses(Lcom/subgraph/orchid/Cell;)V
    .locals 2

    const/4 v0, 0x1

    .line 114
    invoke-interface {p1, v0}, Lcom/subgraph/orchid/Cell;->putByte(I)V

    .line 115
    new-instance v0, Lcom/subgraph/orchid/data/IPv4Address;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/subgraph/orchid/data/IPv4Address;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lcom/subgraph/orchid/connections/ConnectionHandshake;->putIPv4Address(Lcom/subgraph/orchid/Cell;Lcom/subgraph/orchid/data/IPv4Address;)V

    return-void
.end method

.method private putTimestamp(Lcom/subgraph/orchid/Cell;)V
    .locals 4

    .line 102
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 103
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v1, v0

    invoke-interface {p1, v1}, Lcom/subgraph/orchid/Cell;->putInt(I)V

    return-void
.end method

.method private readAddress(Lcom/subgraph/orchid/Cell;)Lcom/subgraph/orchid/data/IPv4Address;
    .locals 3

    .line 135
    invoke-interface {p1}, Lcom/subgraph/orchid/Cell;->getByte()I

    move-result v0

    .line 136
    invoke-interface {p1}, Lcom/subgraph/orchid/Cell;->getByte()I

    move-result v1

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    if-ne v1, v2, :cond_0

    .line 138
    new-instance v0, Lcom/subgraph/orchid/data/IPv4Address;

    invoke-interface {p1}, Lcom/subgraph/orchid/Cell;->getInt()I

    move-result p1

    invoke-direct {v0, p1}, Lcom/subgraph/orchid/data/IPv4Address;-><init>(I)V

    return-object v0

    .line 140
    :cond_0
    new-array v0, v1, [B

    .line 141
    invoke-interface {p1, v0}, Lcom/subgraph/orchid/Cell;->getByteArray([B)V

    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method protected varargs expectCell([Ljava/lang/Integer;)Lcom/subgraph/orchid/Cell;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/ConnectionHandshakeException;
        }
    .end annotation

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/subgraph/orchid/connections/ConnectionHandshake;->connection:Lcom/subgraph/orchid/connections/ConnectionImpl;

    invoke-virtual {v0}, Lcom/subgraph/orchid/connections/ConnectionImpl;->readConnectionControlCell()Lcom/subgraph/orchid/Cell;

    move-result-object v0

    .line 66
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 67
    invoke-interface {v0}, Lcom/subgraph/orchid/Cell;->getCommand()I

    move-result v4

    if-ne v4, v3, :cond_0

    return-object v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 71
    :cond_1
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 72
    new-instance v1, Lcom/subgraph/orchid/ConnectionHandshakeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expecting Cell command "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " and got [ "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/subgraph/orchid/Cell;->getCommand()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " ] instead"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/subgraph/orchid/ConnectionHandshakeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Lcom/subgraph/orchid/ConnectionIOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 74
    new-instance v0, Lcom/subgraph/orchid/ConnectionHandshakeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connection exception while performing handshake "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/subgraph/orchid/ConnectionHandshakeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getMyAddress()Lcom/subgraph/orchid/data/IPv4Address;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/subgraph/orchid/connections/ConnectionHandshake;->myAddress:Lcom/subgraph/orchid/data/IPv4Address;

    return-object v0
.end method

.method getRemoteTimestamp()I
    .locals 1

    .line 56
    iget v0, p0, Lcom/subgraph/orchid/connections/ConnectionHandshake;->remoteTimestamp:I

    return v0
.end method

.method protected processNetInfo(Lcom/subgraph/orchid/Cell;)V
    .locals 4

    .line 123
    invoke-interface {p1}, Lcom/subgraph/orchid/Cell;->getInt()I

    move-result v0

    iput v0, p0, Lcom/subgraph/orchid/connections/ConnectionHandshake;->remoteTimestamp:I

    .line 124
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/connections/ConnectionHandshake;->readAddress(Lcom/subgraph/orchid/Cell;)Lcom/subgraph/orchid/data/IPv4Address;

    move-result-object v0

    iput-object v0, p0, Lcom/subgraph/orchid/connections/ConnectionHandshake;->myAddress:Lcom/subgraph/orchid/data/IPv4Address;

    .line 125
    invoke-interface {p1}, Lcom/subgraph/orchid/Cell;->getByte()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 127
    invoke-direct {p0, p1}, Lcom/subgraph/orchid/connections/ConnectionHandshake;->readAddress(Lcom/subgraph/orchid/Cell;)Lcom/subgraph/orchid/data/IPv4Address;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 129
    iget-object v3, p0, Lcom/subgraph/orchid/connections/ConnectionHandshake;->remoteAddresses:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected receiveVersions()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/ConnectionHandshakeException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x7

    .line 87
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/subgraph/orchid/connections/ConnectionHandshake;->expectCell([Ljava/lang/Integer;)Lcom/subgraph/orchid/Cell;

    move-result-object v0

    .line 88
    :goto_0
    invoke-interface {v0}, Lcom/subgraph/orchid/Cell;->cellBytesRemaining()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    .line 89
    iget-object v1, p0, Lcom/subgraph/orchid/connections/ConnectionHandshake;->remoteVersions:Ljava/util/List;

    invoke-interface {v0}, Lcom/subgraph/orchid/Cell;->getShort()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected recvNetinfo()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/ConnectionHandshakeException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Integer;

    const/16 v1, 0x8

    .line 119
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/subgraph/orchid/connections/ConnectionHandshake;->expectCell([Ljava/lang/Integer;)Lcom/subgraph/orchid/Cell;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/subgraph/orchid/connections/ConnectionHandshake;->processNetInfo(Lcom/subgraph/orchid/Cell;)V

    return-void
.end method

.method abstract runHandshake()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;,
            Lcom/subgraph/orchid/ConnectionIOException;
        }
    .end annotation
.end method

.method protected sendNetinfo()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/ConnectionIOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/16 v1, 0x8

    .line 94
    invoke-static {v0, v1}, Lcom/subgraph/orchid/circuits/cells/CellImpl;->createCell(II)Lcom/subgraph/orchid/circuits/cells/CellImpl;

    move-result-object v0

    .line 95
    invoke-direct {p0, v0}, Lcom/subgraph/orchid/connections/ConnectionHandshake;->putTimestamp(Lcom/subgraph/orchid/Cell;)V

    .line 96
    iget-object v1, p0, Lcom/subgraph/orchid/connections/ConnectionHandshake;->connection:Lcom/subgraph/orchid/connections/ConnectionImpl;

    invoke-virtual {v1}, Lcom/subgraph/orchid/connections/ConnectionImpl;->getRouter()Lcom/subgraph/orchid/Router;

    move-result-object v1

    invoke-interface {v1}, Lcom/subgraph/orchid/Router;->getAddress()Lcom/subgraph/orchid/data/IPv4Address;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/subgraph/orchid/connections/ConnectionHandshake;->putIPv4Address(Lcom/subgraph/orchid/Cell;Lcom/subgraph/orchid/data/IPv4Address;)V

    .line 97
    invoke-direct {p0, v0}, Lcom/subgraph/orchid/connections/ConnectionHandshake;->putMyAddresses(Lcom/subgraph/orchid/Cell;)V

    .line 98
    iget-object v1, p0, Lcom/subgraph/orchid/connections/ConnectionHandshake;->connection:Lcom/subgraph/orchid/connections/ConnectionImpl;

    invoke-virtual {v1, v0}, Lcom/subgraph/orchid/connections/ConnectionImpl;->sendCell(Lcom/subgraph/orchid/Cell;)V

    return-void
.end method

.method protected varargs sendVersions([I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/ConnectionIOException;
        }
    .end annotation

    .line 79
    array-length v0, p1

    mul-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x7

    invoke-static {v1, v2, v0}, Lcom/subgraph/orchid/circuits/cells/CellImpl;->createVarCell(III)Lcom/subgraph/orchid/circuits/cells/CellImpl;

    move-result-object v0

    .line 80
    array-length v2, p1

    :goto_0
    if-ge v1, v2, :cond_0

    aget v3, p1, v1

    .line 81
    invoke-interface {v0, v3}, Lcom/subgraph/orchid/Cell;->putShort(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 83
    :cond_0
    iget-object p1, p0, Lcom/subgraph/orchid/connections/ConnectionHandshake;->connection:Lcom/subgraph/orchid/connections/ConnectionImpl;

    invoke-virtual {p1, v0}, Lcom/subgraph/orchid/connections/ConnectionImpl;->sendCell(Lcom/subgraph/orchid/Cell;)V

    return-void
.end method

.method protected verifyIdentityKey(Ljava/security/PublicKey;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/subgraph/orchid/ConnectionHandshakeException;
        }
    .end annotation

    .line 146
    instance-of v0, p1, Ljava/security/interfaces/RSAPublicKey;

    if-eqz v0, :cond_2

    .line 149
    new-instance v0, Lcom/subgraph/orchid/crypto/TorPublicKey;

    check-cast p1, Ljava/security/interfaces/RSAPublicKey;

    invoke-direct {v0, p1}, Lcom/subgraph/orchid/crypto/TorPublicKey;-><init>(Ljava/security/interfaces/RSAPublicKey;)V

    .line 150
    iget-object p1, p0, Lcom/subgraph/orchid/connections/ConnectionHandshake;->connection:Lcom/subgraph/orchid/connections/ConnectionImpl;

    invoke-virtual {p1}, Lcom/subgraph/orchid/connections/ConnectionImpl;->getRouter()Lcom/subgraph/orchid/Router;

    move-result-object p1

    .line 151
    instance-of v1, p1, Lcom/subgraph/orchid/BridgeRouter;

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lcom/subgraph/orchid/Router;->getIdentityHash()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v1

    if-nez v1, :cond_0

    .line 152
    sget-object v1, Lcom/subgraph/orchid/connections/ConnectionHandshake;->logger:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting Bridge fingerprint from connection handshake for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 153
    check-cast p1, Lcom/subgraph/orchid/BridgeRouter;

    invoke-virtual {v0}, Lcom/subgraph/orchid/crypto/TorPublicKey;->getFingerprint()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/subgraph/orchid/BridgeRouter;->setIdentity(Lcom/subgraph/orchid/data/HexDigest;)V

    goto :goto_0

    .line 154
    :cond_0
    invoke-virtual {v0}, Lcom/subgraph/orchid/crypto/TorPublicKey;->getFingerprint()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object v0

    invoke-interface {p1}, Lcom/subgraph/orchid/Router;->getIdentityHash()Lcom/subgraph/orchid/data/HexDigest;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/subgraph/orchid/data/HexDigest;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :goto_0
    return-void

    .line 155
    :cond_1
    new-instance p1, Lcom/subgraph/orchid/ConnectionHandshakeException;

    const-string v0, "Router identity does not match certificate key"

    invoke-direct {p1, v0}, Lcom/subgraph/orchid/ConnectionHandshakeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 147
    :cond_2
    new-instance p1, Lcom/subgraph/orchid/ConnectionHandshakeException;

    const-string v0, "Identity certificate public key is not an RSA key as expected"

    invoke-direct {p1, v0}, Lcom/subgraph/orchid/ConnectionHandshakeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
