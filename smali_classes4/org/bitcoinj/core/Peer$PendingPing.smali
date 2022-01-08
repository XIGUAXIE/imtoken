.class Lorg/bitcoinj/core/Peer$PendingPing;
.super Ljava/lang/Object;
.source "Peer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/core/Peer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PendingPing"
.end annotation


# instance fields
.field public future:Lcom/google/common/util/concurrent/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/SettableFuture<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final nonce:J

.field public final startTimeMsec:J

.field final synthetic this$0:Lorg/bitcoinj/core/Peer;


# direct methods
.method public constructor <init>(Lorg/bitcoinj/core/Peer;J)V
    .locals 0

    .line 1524
    iput-object p1, p0, Lorg/bitcoinj/core/Peer$PendingPing;->this$0:Lorg/bitcoinj/core/Peer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1525
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/core/Peer$PendingPing;->future:Lcom/google/common/util/concurrent/SettableFuture;

    .line 1526
    iput-wide p2, p0, Lorg/bitcoinj/core/Peer$PendingPing;->nonce:J

    .line 1527
    invoke-static {}, Lorg/bitcoinj/core/Utils;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/bitcoinj/core/Peer$PendingPing;->startTimeMsec:J

    return-void
.end method


# virtual methods
.method public complete()V
    .locals 4

    .line 1531
    iget-object v0, p0, Lorg/bitcoinj/core/Peer$PendingPing;->future:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/SettableFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1532
    invoke-static {}, Lorg/bitcoinj/core/Utils;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/bitcoinj/core/Peer$PendingPing;->startTimeMsec:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 1533
    iget-object v1, p0, Lorg/bitcoinj/core/Peer$PendingPing;->this$0:Lorg/bitcoinj/core/Peer;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lorg/bitcoinj/core/Peer;->access$200(Lorg/bitcoinj/core/Peer;J)V

    .line 1534
    invoke-static {}, Lorg/bitcoinj/core/Peer;->access$100()Lorg/slf4j/Logger;

    move-result-object v1

    iget-object v2, p0, Lorg/bitcoinj/core/Peer$PendingPing;->this$0:Lorg/bitcoinj/core/Peer;

    invoke-virtual {v2}, Lorg/bitcoinj/core/Peer;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "{}: ping time is {} msec"

    invoke-interface {v1, v3, v2, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1535
    iget-object v1, p0, Lorg/bitcoinj/core/Peer$PendingPing;->future:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v1, v0}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
