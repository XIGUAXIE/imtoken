.class Lorg/bitcoinj/kits/WalletAppKit$1;
.super Ljava/lang/Object;
.source "WalletAppKit.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bitcoinj/kits/WalletAppKit;->startUp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bitcoinj/kits/WalletAppKit;


# direct methods
.method constructor <init>(Lorg/bitcoinj/kits/WalletAppKit;)V
    .locals 0

    .line 338
    iput-object p1, p0, Lorg/bitcoinj/kits/WalletAppKit$1;->this$0:Lorg/bitcoinj/kits/WalletAppKit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 1

    .line 348
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 341
    iget-object p1, p0, Lorg/bitcoinj/kits/WalletAppKit$1;->this$0:Lorg/bitcoinj/kits/WalletAppKit;

    iget-object v0, p1, Lorg/bitcoinj/kits/WalletAppKit;->vPeerGroup:Lorg/bitcoinj/core/PeerGroup;

    invoke-static {p1, v0}, Lorg/bitcoinj/kits/WalletAppKit;->access$000(Lorg/bitcoinj/kits/WalletAppKit;Lorg/bitcoinj/core/TransactionBroadcaster;)V

    .line 342
    iget-object p1, p0, Lorg/bitcoinj/kits/WalletAppKit$1;->this$0:Lorg/bitcoinj/kits/WalletAppKit;

    iget-object p1, p1, Lorg/bitcoinj/kits/WalletAppKit;->downloadListener:Lorg/bitcoinj/core/listeners/DownloadProgressTracker;

    if-nez p1, :cond_0

    new-instance p1, Lorg/bitcoinj/core/listeners/DownloadProgressTracker;

    invoke-direct {p1}, Lorg/bitcoinj/core/listeners/DownloadProgressTracker;-><init>()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/bitcoinj/kits/WalletAppKit$1;->this$0:Lorg/bitcoinj/kits/WalletAppKit;

    iget-object p1, p1, Lorg/bitcoinj/kits/WalletAppKit;->downloadListener:Lorg/bitcoinj/core/listeners/DownloadProgressTracker;

    .line 343
    :goto_0
    iget-object v0, p0, Lorg/bitcoinj/kits/WalletAppKit$1;->this$0:Lorg/bitcoinj/kits/WalletAppKit;

    iget-object v0, v0, Lorg/bitcoinj/kits/WalletAppKit;->vPeerGroup:Lorg/bitcoinj/core/PeerGroup;

    invoke-virtual {v0, p1}, Lorg/bitcoinj/core/PeerGroup;->startBlockChainDownload(Lorg/bitcoinj/core/listeners/PeerDataEventListener;)V

    return-void
.end method
