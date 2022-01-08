.class Lorg/bitcoinj/core/PeerGroup$5;
.super Ljava/lang/Object;
.source "PeerGroup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bitcoinj/core/PeerGroup;->createPrivateExecutor()Lcom/google/common/util/concurrent/ListeningScheduledExecutorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bitcoinj/core/PeerGroup;


# direct methods
.method constructor <init>(Lorg/bitcoinj/core/PeerGroup;)V
    .locals 0

    .line 451
    iput-object p1, p0, Lorg/bitcoinj/core/PeerGroup$5;->this$0:Lorg/bitcoinj/core/PeerGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 454
    iget-object v0, p0, Lorg/bitcoinj/core/PeerGroup$5;->this$0:Lorg/bitcoinj/core/PeerGroup;

    invoke-static {v0}, Lorg/bitcoinj/core/PeerGroup;->access$500(Lorg/bitcoinj/core/PeerGroup;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/util/concurrent/Uninterruptibles;->awaitUninterruptibly(Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method
