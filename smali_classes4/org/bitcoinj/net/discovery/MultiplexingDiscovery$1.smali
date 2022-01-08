.class Lorg/bitcoinj/net/discovery/MultiplexingDiscovery$1;
.super Ljava/lang/Object;
.source "MultiplexingDiscovery.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bitcoinj/net/discovery/MultiplexingDiscovery;->getPeers(JJLjava/util/concurrent/TimeUnit;)[Ljava/net/InetSocketAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "[",
        "Ljava/net/InetSocketAddress;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bitcoinj/net/discovery/MultiplexingDiscovery;

.field final synthetic val$seed:Lorg/bitcoinj/net/discovery/PeerDiscovery;

.field final synthetic val$services:J

.field final synthetic val$timeoutUnit:Ljava/util/concurrent/TimeUnit;

.field final synthetic val$timeoutValue:J


# direct methods
.method constructor <init>(Lorg/bitcoinj/net/discovery/MultiplexingDiscovery;Lorg/bitcoinj/net/discovery/PeerDiscovery;JJLjava/util/concurrent/TimeUnit;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lorg/bitcoinj/net/discovery/MultiplexingDiscovery$1;->this$0:Lorg/bitcoinj/net/discovery/MultiplexingDiscovery;

    iput-object p2, p0, Lorg/bitcoinj/net/discovery/MultiplexingDiscovery$1;->val$seed:Lorg/bitcoinj/net/discovery/PeerDiscovery;

    iput-wide p3, p0, Lorg/bitcoinj/net/discovery/MultiplexingDiscovery$1;->val$services:J

    iput-wide p5, p0, Lorg/bitcoinj/net/discovery/MultiplexingDiscovery$1;->val$timeoutValue:J

    iput-object p7, p0, Lorg/bitcoinj/net/discovery/MultiplexingDiscovery$1;->val$timeoutUnit:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 90
    invoke-virtual {p0}, Lorg/bitcoinj/net/discovery/MultiplexingDiscovery$1;->call()[Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public call()[Ljava/net/InetSocketAddress;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lorg/bitcoinj/net/discovery/MultiplexingDiscovery$1;->val$seed:Lorg/bitcoinj/net/discovery/PeerDiscovery;

    iget-wide v1, p0, Lorg/bitcoinj/net/discovery/MultiplexingDiscovery$1;->val$services:J

    iget-wide v3, p0, Lorg/bitcoinj/net/discovery/MultiplexingDiscovery$1;->val$timeoutValue:J

    iget-object v5, p0, Lorg/bitcoinj/net/discovery/MultiplexingDiscovery$1;->val$timeoutUnit:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v5}, Lorg/bitcoinj/net/discovery/PeerDiscovery;->getPeers(JJLjava/util/concurrent/TimeUnit;)[Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method
