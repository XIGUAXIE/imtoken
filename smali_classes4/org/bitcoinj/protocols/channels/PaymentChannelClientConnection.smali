.class public Lorg/bitcoinj/protocols/channels/PaymentChannelClientConnection;
.super Ljava/lang/Object;
.source "PaymentChannelClientConnection.java"


# instance fields
.field private final channelClient:Lorg/bitcoinj/protocols/channels/PaymentChannelClient;

.field private final channelOpenFuture:Lcom/google/common/util/concurrent/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/SettableFuture<",
            "Lorg/bitcoinj/protocols/channels/PaymentChannelClientConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final wireParser:Lorg/bitcoinj/net/ProtobufConnection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/bitcoinj/net/ProtobufConnection<",
            "Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/net/InetSocketAddress;ILorg/bitcoinj/wallet/Wallet;Lorg/bitcoinj/core/ECKey;Lorg/bitcoinj/core/Coin;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/bitcoinj/protocols/channels/ValueOutOfRangeException;
        }
    .end annotation

    .line 71
    sget-object v7, Lorg/bitcoinj/protocols/channels/PaymentChannelClient$VersionSelector;->VERSION_2_ALLOW_1:Lorg/bitcoinj/protocols/channels/PaymentChannelClient$VersionSelector;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lorg/bitcoinj/protocols/channels/PaymentChannelClientConnection;-><init>(Ljava/net/InetSocketAddress;ILorg/bitcoinj/wallet/Wallet;Lorg/bitcoinj/core/ECKey;Lorg/bitcoinj/core/Coin;Ljava/lang/String;Lorg/bitcoinj/protocols/channels/PaymentChannelClient$VersionSelector;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/InetSocketAddress;ILorg/bitcoinj/wallet/Wallet;Lorg/bitcoinj/core/ECKey;Lorg/bitcoinj/core/Coin;Ljava/lang/String;JLorg/spongycastle/crypto/params/KeyParameter;)V
    .locals 11
    .param p9    # Lorg/spongycastle/crypto/params/KeyParameter;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/bitcoinj/protocols/channels/ValueOutOfRangeException;
        }
    .end annotation

    .line 130
    sget-object v10, Lorg/bitcoinj/protocols/channels/PaymentChannelClient$VersionSelector;->VERSION_2_ALLOW_1:Lorg/bitcoinj/protocols/channels/PaymentChannelClient$VersionSelector;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-wide/from16 v7, p7

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v10}, Lorg/bitcoinj/protocols/channels/PaymentChannelClientConnection;-><init>(Ljava/net/InetSocketAddress;ILorg/bitcoinj/wallet/Wallet;Lorg/bitcoinj/core/ECKey;Lorg/bitcoinj/core/Coin;Ljava/lang/String;JLorg/spongycastle/crypto/params/KeyParameter;Lorg/bitcoinj/protocols/channels/PaymentChannelClient$VersionSelector;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/InetSocketAddress;ILorg/bitcoinj/wallet/Wallet;Lorg/bitcoinj/core/ECKey;Lorg/bitcoinj/core/Coin;Ljava/lang/String;JLorg/spongycastle/crypto/params/KeyParameter;Lorg/bitcoinj/protocols/channels/PaymentChannelClient$VersionSelector;)V
    .locals 12
    .param p9    # Lorg/spongycastle/crypto/params/KeyParameter;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/bitcoinj/protocols/channels/ValueOutOfRangeException;
        }
    .end annotation

    move-object v0, p0

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v1

    iput-object v1, v0, Lorg/bitcoinj/protocols/channels/PaymentChannelClientConnection;->channelOpenFuture:Lcom/google/common/util/concurrent/SettableFuture;

    .line 168
    new-instance v1, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lorg/bitcoinj/core/Sha256Hash;->of([B)Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v6

    new-instance v10, Lorg/bitcoinj/protocols/channels/PaymentChannelClientConnection$1;

    move-wide/from16 v7, p7

    invoke-direct {v10, p0, v7, v8}, Lorg/bitcoinj/protocols/channels/PaymentChannelClientConnection$1;-><init>(Lorg/bitcoinj/protocols/channels/PaymentChannelClientConnection;J)V

    move-object v2, v1

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v9, p9

    move-object/from16 v11, p10

    invoke-direct/range {v2 .. v11}, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;-><init>(Lorg/bitcoinj/wallet/Wallet;Lorg/bitcoinj/core/ECKey;Lorg/bitcoinj/core/Coin;Lorg/bitcoinj/core/Sha256Hash;JLorg/spongycastle/crypto/params/KeyParameter;Lorg/bitcoinj/protocols/channels/IPaymentChannelClient$ClientConnection;Lorg/bitcoinj/protocols/channels/PaymentChannelClient$VersionSelector;)V

    iput-object v1, v0, Lorg/bitcoinj/protocols/channels/PaymentChannelClientConnection;->channelClient:Lorg/bitcoinj/protocols/channels/PaymentChannelClient;

    .line 195
    new-instance v1, Lorg/bitcoinj/net/ProtobufConnection;

    new-instance v2, Lorg/bitcoinj/protocols/channels/PaymentChannelClientConnection$2;

    invoke-direct {v2, p0}, Lorg/bitcoinj/protocols/channels/PaymentChannelClientConnection$2;-><init>(Lorg/bitcoinj/protocols/channels/PaymentChannelClientConnection;)V

    .line 217
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;

    move-result-object v3

    move v4, p2

    mul-int/lit16 v4, v4, 0x3e8

    const/16 v5, 0x7fff

    invoke-direct {v1, v2, v3, v5, v4}, Lorg/bitcoinj/net/ProtobufConnection;-><init>(Lorg/bitcoinj/net/ProtobufConnection$Listener;Lcom/google/protobuf/MessageLite;II)V

    iput-object v1, v0, Lorg/bitcoinj/protocols/channels/PaymentChannelClientConnection;->wireParser:Lorg/bitcoinj/net/ProtobufConnection;

    .line 221
    new-instance v1, Lorg/bitcoinj/net/NioClient;

    iget-object v2, v0, Lorg/bitcoinj/protocols/channels/PaymentChannelClientConnection;->wireParser:Lorg/bitcoinj/net/ProtobufConnection;

    move-object v3, p1

    invoke-direct {v1, p1, v2, v4}, Lorg/bitcoinj/net/NioClient;-><init>(Ljava/net/SocketAddress;Lorg/bitcoinj/net/StreamConnection;I)V

    return-void
.end method

.method public constructor <init>(Ljava/net/InetSocketAddress;ILorg/bitcoinj/wallet/Wallet;Lorg/bitcoinj/core/ECKey;Lorg/bitcoinj/core/Coin;Ljava/lang/String;Lorg/bitcoinj/protocols/channels/PaymentChannelClient$VersionSelector;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/bitcoinj/protocols/channels/ValueOutOfRangeException;
        }
    .end annotation

    const-wide/32 v7, 0x15144

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v10, p7

    .line 101
    invoke-direct/range {v0 .. v10}, Lorg/bitcoinj/protocols/channels/PaymentChannelClientConnection;-><init>(Ljava/net/InetSocketAddress;ILorg/bitcoinj/wallet/Wallet;Lorg/bitcoinj/core/ECKey;Lorg/bitcoinj/core/Coin;Ljava/lang/String;JLorg/spongycastle/crypto/params/KeyParameter;Lorg/bitcoinj/protocols/channels/PaymentChannelClient$VersionSelector;)V

    return-void
.end method

.method static synthetic access$000(Lorg/bitcoinj/protocols/channels/PaymentChannelClientConnection;)Lorg/bitcoinj/net/ProtobufConnection;
    .locals 0

    .line 42
    iget-object p0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClientConnection;->wireParser:Lorg/bitcoinj/net/ProtobufConnection;

    return-object p0
.end method

.method static synthetic access$100(Lorg/bitcoinj/protocols/channels/PaymentChannelClientConnection;)Lcom/google/common/util/concurrent/SettableFuture;
    .locals 0

    .line 42
    iget-object p0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClientConnection;->channelOpenFuture:Lcom/google/common/util/concurrent/SettableFuture;

    return-object p0
.end method

.method static synthetic access$200(Lorg/bitcoinj/protocols/channels/PaymentChannelClientConnection;)Lorg/bitcoinj/protocols/channels/PaymentChannelClient;
    .locals 0

    .line 42
    iget-object p0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClientConnection;->channelClient:Lorg/bitcoinj/protocols/channels/PaymentChannelClient;

    return-object p0
.end method


# virtual methods
.method public disconnectWithoutSettlement()V
    .locals 1

    .line 305
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClientConnection;->wireParser:Lorg/bitcoinj/net/ProtobufConnection;

    invoke-virtual {v0}, Lorg/bitcoinj/net/ProtobufConnection;->closeConnection()V

    return-void
.end method

.method public getChannelOpenFuture()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Lorg/bitcoinj/protocols/channels/PaymentChannelClientConnection;",
            ">;"
        }
    .end annotation

    .line 234
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClientConnection;->channelOpenFuture:Lcom/google/common/util/concurrent/SettableFuture;

    return-object v0
.end method

.method public incrementPayment(Lorg/bitcoinj/core/Coin;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bitcoinj/core/Coin;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Lorg/bitcoinj/protocols/channels/PaymentIncrementAck;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/protocols/channels/ValueOutOfRangeException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 247
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClientConnection;->channelClient:Lorg/bitcoinj/protocols/channels/PaymentChannelClient;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1}, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->incrementPayment(Lorg/bitcoinj/core/Coin;Lcom/google/protobuf/ByteString;Lorg/spongycastle/crypto/params/KeyParameter;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public incrementPayment(Lorg/bitcoinj/core/Coin;Lcom/google/protobuf/ByteString;Lorg/spongycastle/crypto/params/KeyParameter;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p2    # Lcom/google/protobuf/ByteString;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lorg/spongycastle/crypto/params/KeyParameter;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bitcoinj/core/Coin;",
            "Lcom/google/protobuf/ByteString;",
            "Lorg/spongycastle/crypto/params/KeyParameter;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Lorg/bitcoinj/protocols/channels/PaymentIncrementAck;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/protocols/channels/ValueOutOfRangeException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 266
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClientConnection;->channelClient:Lorg/bitcoinj/protocols/channels/PaymentChannelClient;

    invoke-virtual {v0, p1, p2, p3}, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->incrementPayment(Lorg/bitcoinj/core/Coin;Lcom/google/protobuf/ByteString;Lorg/spongycastle/crypto/params/KeyParameter;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public settle()V
    .locals 1

    .line 294
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClientConnection;->channelClient:Lorg/bitcoinj/protocols/channels/PaymentChannelClient;

    invoke-virtual {v0}, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->settle()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public state()Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;
    .locals 1

    .line 277
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelClientConnection;->channelClient:Lorg/bitcoinj/protocols/channels/PaymentChannelClient;

    invoke-virtual {v0}, Lorg/bitcoinj/protocols/channels/PaymentChannelClient;->state()Lorg/bitcoinj/protocols/channels/PaymentChannelClientState;

    move-result-object v0

    return-object v0
.end method
