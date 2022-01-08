.class Lorg/bitcoinj/core/TransactionConfidence$2;
.super Ljava/lang/Object;
.source "TransactionConfidence.java"

# interfaces
.implements Lorg/bitcoinj/core/TransactionConfidence$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bitcoinj/core/TransactionConfidence;->getDepthFuture(ILjava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bitcoinj/core/TransactionConfidence;

.field final synthetic val$depth:I

.field final synthetic val$result:Lcom/google/common/util/concurrent/SettableFuture;


# direct methods
.method constructor <init>(Lorg/bitcoinj/core/TransactionConfidence;ILcom/google/common/util/concurrent/SettableFuture;)V
    .locals 0

    .line 492
    iput-object p1, p0, Lorg/bitcoinj/core/TransactionConfidence$2;->this$0:Lorg/bitcoinj/core/TransactionConfidence;

    iput p2, p0, Lorg/bitcoinj/core/TransactionConfidence$2;->val$depth:I

    iput-object p3, p0, Lorg/bitcoinj/core/TransactionConfidence$2;->val$result:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfidenceChanged(Lorg/bitcoinj/core/TransactionConfidence;Lorg/bitcoinj/core/TransactionConfidence$Listener$ChangeReason;)V
    .locals 1

    .line 494
    iget-object p2, p0, Lorg/bitcoinj/core/TransactionConfidence$2;->this$0:Lorg/bitcoinj/core/TransactionConfidence;

    invoke-virtual {p2}, Lorg/bitcoinj/core/TransactionConfidence;->getDepthInBlocks()I

    move-result p2

    iget v0, p0, Lorg/bitcoinj/core/TransactionConfidence$2;->val$depth:I

    if-lt p2, v0, :cond_0

    .line 495
    iget-object p2, p0, Lorg/bitcoinj/core/TransactionConfidence$2;->this$0:Lorg/bitcoinj/core/TransactionConfidence;

    invoke-virtual {p2, p0}, Lorg/bitcoinj/core/TransactionConfidence;->removeEventListener(Lorg/bitcoinj/core/TransactionConfidence$Listener;)Z

    .line 496
    iget-object p2, p0, Lorg/bitcoinj/core/TransactionConfidence$2;->val$result:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {p2, p1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
