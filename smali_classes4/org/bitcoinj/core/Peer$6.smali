.class Lorg/bitcoinj/core/Peer$6;
.super Ljava/lang/Object;
.source "Peer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bitcoinj/core/Peer;->processTransaction(Lorg/bitcoinj/core/Transaction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bitcoinj/core/Peer;

.field final synthetic val$registration:Lorg/bitcoinj/utils/ListenerRegistration;

.field final synthetic val$tx:Lorg/bitcoinj/core/Transaction;


# direct methods
.method constructor <init>(Lorg/bitcoinj/core/Peer;Lorg/bitcoinj/utils/ListenerRegistration;Lorg/bitcoinj/core/Transaction;)V
    .locals 0

    .line 849
    iput-object p1, p0, Lorg/bitcoinj/core/Peer$6;->this$0:Lorg/bitcoinj/core/Peer;

    iput-object p2, p0, Lorg/bitcoinj/core/Peer$6;->val$registration:Lorg/bitcoinj/utils/ListenerRegistration;

    iput-object p3, p0, Lorg/bitcoinj/core/Peer$6;->val$tx:Lorg/bitcoinj/core/Transaction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 852
    iget-object v0, p0, Lorg/bitcoinj/core/Peer$6;->val$registration:Lorg/bitcoinj/utils/ListenerRegistration;

    iget-object v0, v0, Lorg/bitcoinj/utils/ListenerRegistration;->listener:Ljava/lang/Object;

    check-cast v0, Lorg/bitcoinj/core/listeners/OnTransactionBroadcastListener;

    iget-object v1, p0, Lorg/bitcoinj/core/Peer$6;->this$0:Lorg/bitcoinj/core/Peer;

    iget-object v2, p0, Lorg/bitcoinj/core/Peer$6;->val$tx:Lorg/bitcoinj/core/Transaction;

    invoke-interface {v0, v1, v2}, Lorg/bitcoinj/core/listeners/OnTransactionBroadcastListener;->onTransaction(Lorg/bitcoinj/core/Peer;Lorg/bitcoinj/core/Transaction;)V

    return-void
.end method
