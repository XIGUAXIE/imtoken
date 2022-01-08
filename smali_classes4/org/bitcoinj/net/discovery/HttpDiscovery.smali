.class public Lorg/bitcoinj/net/discovery/HttpDiscovery;
.super Ljava/lang/Object;
.source "HttpDiscovery.java"

# interfaces
.implements Lorg/bitcoinj/net/discovery/PeerDiscovery;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoinj/net/discovery/HttpDiscovery$Details;
    }
.end annotation


# static fields
.field private static final log:Lorg/slf4j/Logger;


# instance fields
.field private final client:Lcom/squareup/okhttp/OkHttpClient;

.field private final details:Lorg/bitcoinj/net/discovery/HttpDiscovery$Details;

.field private final params:Lorg/bitcoinj/core/NetworkParameters;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    const-class v0, Lorg/bitcoinj/net/discovery/HttpDiscovery;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/bitcoinj/net/discovery/HttpDiscovery;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/core/NetworkParameters;Ljava/net/URI;Lorg/bitcoinj/core/ECKey;)V
    .locals 1
    .param p3    # Lorg/bitcoinj/core/ECKey;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 64
    new-instance v0, Lorg/bitcoinj/net/discovery/HttpDiscovery$Details;

    invoke-direct {v0, p3, p2}, Lorg/bitcoinj/net/discovery/HttpDiscovery$Details;-><init>(Lorg/bitcoinj/core/ECKey;Ljava/net/URI;)V

    invoke-direct {p0, p1, v0}, Lorg/bitcoinj/net/discovery/HttpDiscovery;-><init>(Lorg/bitcoinj/core/NetworkParameters;Lorg/bitcoinj/net/discovery/HttpDiscovery$Details;)V

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/core/NetworkParameters;Lorg/bitcoinj/net/discovery/HttpDiscovery$Details;)V
    .locals 1

    .line 72
    new-instance v0, Lcom/squareup/okhttp/OkHttpClient;

    invoke-direct {v0}, Lcom/squareup/okhttp/OkHttpClient;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lorg/bitcoinj/net/discovery/HttpDiscovery;-><init>(Lorg/bitcoinj/core/NetworkParameters;Lorg/bitcoinj/net/discovery/HttpDiscovery$Details;Lcom/squareup/okhttp/OkHttpClient;)V

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/core/NetworkParameters;Lorg/bitcoinj/net/discovery/HttpDiscovery$Details;Lcom/squareup/okhttp/OkHttpClient;)V
    .locals 2

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iget-object v0, p2, Lorg/bitcoinj/net/discovery/HttpDiscovery$Details;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 77
    iput-object p2, p0, Lorg/bitcoinj/net/discovery/HttpDiscovery;->details:Lorg/bitcoinj/net/discovery/HttpDiscovery$Details;

    .line 78
    iput-object p1, p0, Lorg/bitcoinj/net/discovery/HttpDiscovery;->params:Lorg/bitcoinj/core/NetworkParameters;

    .line 79
    iput-object p3, p0, Lorg/bitcoinj/net/discovery/HttpDiscovery;->client:Lcom/squareup/okhttp/OkHttpClient;

    return-void
.end method


# virtual methods
.method public getPeers(JJLjava/util/concurrent/TimeUnit;)[Ljava/net/InetSocketAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/net/discovery/PeerDiscoveryException;
        }
    .end annotation

    .line 85
    :try_start_0
    iget-object p3, p0, Lorg/bitcoinj/net/discovery/HttpDiscovery;->details:Lorg/bitcoinj/net/discovery/HttpDiscovery$Details;

    iget-object p3, p3, Lorg/bitcoinj/net/discovery/HttpDiscovery$Details;->uri:Ljava/net/URI;

    invoke-static {p3}, Lcom/squareup/okhttp/HttpUrl;->get(Ljava/net/URI;)Lcom/squareup/okhttp/HttpUrl;

    move-result-object p3

    invoke-virtual {p3}, Lcom/squareup/okhttp/HttpUrl;->newBuilder()Lcom/squareup/okhttp/HttpUrl$Builder;

    move-result-object p3

    const-wide/16 p4, 0x0

    cmp-long v0, p1, p4

    if-eqz v0, :cond_0

    const-string p4, "srvmask"

    .line 87
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p4, p1}, Lcom/squareup/okhttp/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/HttpUrl$Builder;

    .line 88
    :cond_0
    new-instance p1, Lcom/squareup/okhttp/Request$Builder;

    invoke-direct {p1}, Lcom/squareup/okhttp/Request$Builder;-><init>()V

    .line 89
    invoke-virtual {p3}, Lcom/squareup/okhttp/HttpUrl$Builder;->build()Lcom/squareup/okhttp/HttpUrl;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/squareup/okhttp/Request$Builder;->url(Lcom/squareup/okhttp/HttpUrl;)Lcom/squareup/okhttp/Request$Builder;

    const-string p2, "User-Agent"

    const-string p4, "/bitcoinj:0.14.7/"

    .line 90
    invoke-virtual {p1, p2, p4}, Lcom/squareup/okhttp/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    .line 91
    sget-object p2, Lorg/bitcoinj/net/discovery/HttpDiscovery;->log:Lorg/slf4j/Logger;

    const-string p4, "Requesting seeds from {}"

    invoke-interface {p2, p4, p3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 92
    iget-object p2, p0, Lorg/bitcoinj/net/discovery/HttpDiscovery;->client:Lcom/squareup/okhttp/OkHttpClient;

    invoke-virtual {p1}, Lcom/squareup/okhttp/Request$Builder;->build()Lcom/squareup/okhttp/Request;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/squareup/okhttp/OkHttpClient;->newCall(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Call;

    move-result-object p1

    invoke-virtual {p1}, Lcom/squareup/okhttp/Call;->execute()Lcom/squareup/okhttp/Response;

    move-result-object p1

    .line 93
    invoke-virtual {p1}, Lcom/squareup/okhttp/Response;->isSuccessful()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 95
    invoke-virtual {p1}, Lcom/squareup/okhttp/Response;->body()Lcom/squareup/okhttp/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lcom/squareup/okhttp/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object p1

    .line 96
    new-instance p2, Ljava/util/zip/GZIPInputStream;

    invoke-direct {p2, p1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Lorg/bitcoinj/net/discovery/PeerDiscoveryException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :try_start_1
    invoke-static {p2}, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;->parseDelimitedFrom(Ljava/io/InputStream;)Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    :try_start_2
    invoke-virtual {p2}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 104
    invoke-virtual {p0, p1}, Lorg/bitcoinj/net/discovery/HttpDiscovery;->protoToAddrs(Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;)[Ljava/net/InetSocketAddress;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 101
    invoke-virtual {p2}, Ljava/util/zip/GZIPInputStream;->close()V

    throw p1

    .line 94
    :cond_1
    new-instance p2, Lorg/bitcoinj/net/discovery/PeerDiscoveryException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "HTTP request failed: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/squareup/okhttp/Response;->code()I

    move-result p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/squareup/okhttp/Response;->message()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/bitcoinj/net/discovery/PeerDiscoveryException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_2
    .catch Lorg/bitcoinj/net/discovery/PeerDiscoveryException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 108
    new-instance p2, Lorg/bitcoinj/net/discovery/PeerDiscoveryException;

    invoke-direct {p2, p1}, Lorg/bitcoinj/net/discovery/PeerDiscoveryException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 106
    throw p1
.end method

.method public protoToAddrs(Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;)[Ljava/net/InetSocketAddress;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/net/discovery/PeerDiscoveryException;,
            Lcom/google/protobuf/InvalidProtocolBufferException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lorg/bitcoinj/net/discovery/HttpDiscovery;->details:Lorg/bitcoinj/net/discovery/HttpDiscovery$Details;

    iget-object v0, v0, Lorg/bitcoinj/net/discovery/HttpDiscovery$Details;->pubkey:Lorg/bitcoinj/core/ECKey;

    if-eqz v0, :cond_1

    .line 115
    invoke-virtual {p1}, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;->getPubkey()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v0

    iget-object v1, p0, Lorg/bitcoinj/net/discovery/HttpDiscovery;->details:Lorg/bitcoinj/net/discovery/HttpDiscovery$Details;

    iget-object v1, v1, Lorg/bitcoinj/net/discovery/HttpDiscovery$Details;->pubkey:Lorg/bitcoinj/core/ECKey;

    invoke-virtual {v1}, Lorg/bitcoinj/core/ECKey;->getPubKey()[B

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {p1}, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;->getPeerSeeds()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bitcoinj/core/Sha256Hash;->hash([B)[B

    move-result-object v0

    .line 118
    iget-object v1, p0, Lorg/bitcoinj/net/discovery/HttpDiscovery;->details:Lorg/bitcoinj/net/discovery/HttpDiscovery$Details;

    iget-object v1, v1, Lorg/bitcoinj/net/discovery/HttpDiscovery$Details;->pubkey:Lorg/bitcoinj/core/ECKey;

    invoke-virtual {p1}, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;->getSignature()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/bitcoinj/core/ECKey;->verifyOrThrow([B[B)V

    goto :goto_0

    .line 116
    :cond_0
    new-instance p1, Lorg/bitcoinj/net/discovery/PeerDiscoveryException;

    const-string v0, "Public key mismatch"

    invoke-direct {p1, v0}, Lorg/bitcoinj/net/discovery/PeerDiscoveryException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 120
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;->getPeerSeeds()Lcom/google/protobuf/ByteString;

    move-result-object p1

    invoke-static {p1}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->parseFrom(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;

    move-result-object p1

    .line 121
    invoke-virtual {p1}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->getTimestamp()J

    move-result-wide v0

    invoke-static {}, Lorg/bitcoinj/core/Utils;->currentTimeSeconds()J

    move-result-wide v2

    const-wide/32 v4, 0x15180

    sub-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-ltz v4, :cond_4

    .line 123
    invoke-virtual {p1}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->getNet()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/bitcoinj/net/discovery/HttpDiscovery;->params:Lorg/bitcoinj/core/NetworkParameters;

    invoke-virtual {v1}, Lorg/bitcoinj/core/NetworkParameters;->getPaymentProtocolId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 125
    invoke-virtual {p1}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->getSeedCount()I

    move-result v0

    new-array v0, v0, [Ljava/net/InetSocketAddress;

    const/4 v1, 0x0

    .line 127
    invoke-virtual {p1}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;->getSeedList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;

    add-int/lit8 v3, v1, 0x1

    .line 128
    new-instance v4, Ljava/net/InetSocketAddress;

    invoke-virtual {v2}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;->getIpAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeedData;->getPort()I

    move-result v2

    invoke-direct {v4, v5, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    aput-object v4, v0, v1

    move v1, v3

    goto :goto_1

    :cond_2
    return-object v0

    .line 124
    :cond_3
    new-instance p1, Lorg/bitcoinj/net/discovery/PeerDiscoveryException;

    const-string v0, "Network mismatch"

    invoke-direct {p1, v0}, Lorg/bitcoinj/net/discovery/PeerDiscoveryException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 122
    :cond_4
    new-instance p1, Lorg/bitcoinj/net/discovery/PeerDiscoveryException;

    const-string v0, "Seed data is more than one day old: replay attack?"

    invoke-direct {p1, v0}, Lorg/bitcoinj/net/discovery/PeerDiscoveryException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public shutdown()V
    .locals 0

    return-void
.end method
