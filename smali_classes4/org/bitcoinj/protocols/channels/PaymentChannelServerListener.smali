.class public Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener;
.super Ljava/lang/Object;
.source "PaymentChannelServerListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$ServerHandler;,
        Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$HandlerFactory;
    }
.end annotation


# instance fields
.field private final broadcaster:Lorg/bitcoinj/core/TransactionBroadcaster;

.field private final eventHandlerFactory:Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$HandlerFactory;

.field private final minAcceptedChannelSize:Lorg/bitcoinj/core/Coin;

.field private server:Lorg/bitcoinj/net/NioServer;

.field private final timeoutSeconds:I

.field private final wallet:Lorg/bitcoinj/wallet/Wallet;


# direct methods
.method public constructor <init>(Lorg/bitcoinj/core/TransactionBroadcaster;Lorg/bitcoinj/wallet/Wallet;ILorg/bitcoinj/core/Coin;Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$HandlerFactory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/bitcoinj/wallet/Wallet;

    iput-object p2, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener;->wallet:Lorg/bitcoinj/wallet/Wallet;

    .line 173
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/core/TransactionBroadcaster;

    iput-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener;->broadcaster:Lorg/bitcoinj/core/TransactionBroadcaster;

    .line 174
    invoke-static {p5}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$HandlerFactory;

    iput-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener;->eventHandlerFactory:Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$HandlerFactory;

    .line 175
    invoke-static {p4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/core/Coin;

    iput-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener;->minAcceptedChannelSize:Lorg/bitcoinj/core/Coin;

    .line 176
    iput p3, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener;->timeoutSeconds:I

    return-void
.end method

.method static synthetic access$000(Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener;)Lorg/bitcoinj/core/TransactionBroadcaster;
    .locals 0

    .line 46
    iget-object p0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener;->broadcaster:Lorg/bitcoinj/core/TransactionBroadcaster;

    return-object p0
.end method

.method static synthetic access$100(Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener;)Lorg/bitcoinj/wallet/Wallet;
    .locals 0

    .line 46
    iget-object p0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener;->wallet:Lorg/bitcoinj/wallet/Wallet;

    return-object p0
.end method

.method static synthetic access$200(Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener;)Lorg/bitcoinj/core/Coin;
    .locals 0

    .line 46
    iget-object p0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener;->minAcceptedChannelSize:Lorg/bitcoinj/core/Coin;

    return-object p0
.end method

.method static synthetic access$700(Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener;)Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$HandlerFactory;
    .locals 0

    .line 46
    iget-object p0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener;->eventHandlerFactory:Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$HandlerFactory;

    return-object p0
.end method

.method static synthetic access$800(Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener;)I
    .locals 0

    .line 46
    iget p0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener;->timeoutSeconds:I

    return p0
.end method


# virtual methods
.method public bindAndStart(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 146
    new-instance v0, Lorg/bitcoinj/net/NioServer;

    new-instance v1, Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$1;

    invoke-direct {v1, p0}, Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener$1;-><init>(Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener;)V

    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-direct {v2, p1}, Ljava/net/InetSocketAddress;-><init>(I)V

    invoke-direct {v0, v1, v2}, Lorg/bitcoinj/net/NioServer;-><init>(Lorg/bitcoinj/net/StreamConnectionFactory;Ljava/net/InetSocketAddress;)V

    iput-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener;->server:Lorg/bitcoinj/net/NioServer;

    .line 152
    invoke-virtual {v0}, Lorg/bitcoinj/net/NioServer;->startAsync()Lcom/google/common/util/concurrent/Service;

    .line 153
    iget-object p1, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener;->server:Lorg/bitcoinj/net/NioServer;

    invoke-virtual {p1}, Lorg/bitcoinj/net/NioServer;->awaitRunning()V

    return-void
.end method

.method public close()V
    .locals 1

    .line 187
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener;->server:Lorg/bitcoinj/net/NioServer;

    invoke-virtual {v0}, Lorg/bitcoinj/net/NioServer;->stopAsync()Lcom/google/common/util/concurrent/Service;

    .line 188
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/PaymentChannelServerListener;->server:Lorg/bitcoinj/net/NioServer;

    invoke-virtual {v0}, Lorg/bitcoinj/net/NioServer;->awaitTerminated()V

    return-void
.end method
