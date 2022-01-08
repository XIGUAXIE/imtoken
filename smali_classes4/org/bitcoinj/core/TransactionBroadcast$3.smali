.class Lorg/bitcoinj/core/TransactionBroadcast$3;
.super Ljava/lang/Object;
.source "TransactionBroadcast.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bitcoinj/core/TransactionBroadcast;->invokeProgressCallback(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bitcoinj/core/TransactionBroadcast;

.field final synthetic val$callback:Lorg/bitcoinj/core/TransactionBroadcast$ProgressCallback;

.field final synthetic val$progress:D


# direct methods
.method constructor <init>(Lorg/bitcoinj/core/TransactionBroadcast;Lorg/bitcoinj/core/TransactionBroadcast$ProgressCallback;D)V
    .locals 0

    .line 236
    iput-object p1, p0, Lorg/bitcoinj/core/TransactionBroadcast$3;->this$0:Lorg/bitcoinj/core/TransactionBroadcast;

    iput-object p2, p0, Lorg/bitcoinj/core/TransactionBroadcast$3;->val$callback:Lorg/bitcoinj/core/TransactionBroadcast$ProgressCallback;

    iput-wide p3, p0, Lorg/bitcoinj/core/TransactionBroadcast$3;->val$progress:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 239
    iget-object v0, p0, Lorg/bitcoinj/core/TransactionBroadcast$3;->val$callback:Lorg/bitcoinj/core/TransactionBroadcast$ProgressCallback;

    iget-wide v1, p0, Lorg/bitcoinj/core/TransactionBroadcast$3;->val$progress:D

    invoke-interface {v0, v1, v2}, Lorg/bitcoinj/core/TransactionBroadcast$ProgressCallback;->onBroadcastProgress(D)V

    return-void
.end method
