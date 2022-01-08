.class Lorg/bitcoinj/core/TransactionConfidence$1;
.super Ljava/lang/Object;
.source "TransactionConfidence.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bitcoinj/core/TransactionConfidence;->queueListeners(Lorg/bitcoinj/core/TransactionConfidence$Listener$ChangeReason;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bitcoinj/core/TransactionConfidence;

.field final synthetic val$reason:Lorg/bitcoinj/core/TransactionConfidence$Listener$ChangeReason;

.field final synthetic val$registration:Lorg/bitcoinj/utils/ListenerRegistration;


# direct methods
.method constructor <init>(Lorg/bitcoinj/core/TransactionConfidence;Lorg/bitcoinj/utils/ListenerRegistration;Lorg/bitcoinj/core/TransactionConfidence$Listener$ChangeReason;)V
    .locals 0

    .line 453
    iput-object p1, p0, Lorg/bitcoinj/core/TransactionConfidence$1;->this$0:Lorg/bitcoinj/core/TransactionConfidence;

    iput-object p2, p0, Lorg/bitcoinj/core/TransactionConfidence$1;->val$registration:Lorg/bitcoinj/utils/ListenerRegistration;

    iput-object p3, p0, Lorg/bitcoinj/core/TransactionConfidence$1;->val$reason:Lorg/bitcoinj/core/TransactionConfidence$Listener$ChangeReason;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 456
    iget-object v0, p0, Lorg/bitcoinj/core/TransactionConfidence$1;->val$registration:Lorg/bitcoinj/utils/ListenerRegistration;

    iget-object v0, v0, Lorg/bitcoinj/utils/ListenerRegistration;->listener:Ljava/lang/Object;

    check-cast v0, Lorg/bitcoinj/core/TransactionConfidence$Listener;

    iget-object v1, p0, Lorg/bitcoinj/core/TransactionConfidence$1;->this$0:Lorg/bitcoinj/core/TransactionConfidence;

    iget-object v2, p0, Lorg/bitcoinj/core/TransactionConfidence$1;->val$reason:Lorg/bitcoinj/core/TransactionConfidence$Listener$ChangeReason;

    invoke-interface {v0, v1, v2}, Lorg/bitcoinj/core/TransactionConfidence$Listener;->onConfidenceChanged(Lorg/bitcoinj/core/TransactionConfidence;Lorg/bitcoinj/core/TransactionConfidence$Listener$ChangeReason;)V

    return-void
.end method
