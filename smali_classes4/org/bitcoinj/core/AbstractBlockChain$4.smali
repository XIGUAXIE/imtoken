.class Lorg/bitcoinj/core/AbstractBlockChain$4;
.super Ljava/lang/Object;
.source "AbstractBlockChain.java"

# interfaces
.implements Lorg/bitcoinj/core/listeners/NewBestBlockListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bitcoinj/core/AbstractBlockChain;->getHeightFuture(I)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bitcoinj/core/AbstractBlockChain;

.field final synthetic val$height:I

.field final synthetic val$result:Lcom/google/common/util/concurrent/SettableFuture;


# direct methods
.method constructor <init>(Lorg/bitcoinj/core/AbstractBlockChain;ILcom/google/common/util/concurrent/SettableFuture;)V
    .locals 0

    .line 1003
    iput-object p1, p0, Lorg/bitcoinj/core/AbstractBlockChain$4;->this$0:Lorg/bitcoinj/core/AbstractBlockChain;

    iput p2, p0, Lorg/bitcoinj/core/AbstractBlockChain$4;->val$height:I

    iput-object p3, p0, Lorg/bitcoinj/core/AbstractBlockChain$4;->val$result:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyNewBestBlock(Lorg/bitcoinj/core/StoredBlock;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/VerificationException;
        }
    .end annotation

    .line 1006
    invoke-virtual {p1}, Lorg/bitcoinj/core/StoredBlock;->getHeight()I

    move-result v0

    iget v1, p0, Lorg/bitcoinj/core/AbstractBlockChain$4;->val$height:I

    if-lt v0, v1, :cond_0

    .line 1007
    iget-object v0, p0, Lorg/bitcoinj/core/AbstractBlockChain$4;->this$0:Lorg/bitcoinj/core/AbstractBlockChain;

    invoke-virtual {v0, p0}, Lorg/bitcoinj/core/AbstractBlockChain;->removeNewBestBlockListener(Lorg/bitcoinj/core/listeners/NewBestBlockListener;)V

    .line 1008
    iget-object v0, p0, Lorg/bitcoinj/core/AbstractBlockChain$4;->val$result:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
