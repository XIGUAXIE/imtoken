.class Lorg/bitcoinj/wallet/BasicKeyChain$1;
.super Ljava/lang/Object;
.source "BasicKeyChain.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bitcoinj/wallet/BasicKeyChain;->queueOnKeysAdded(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bitcoinj/wallet/BasicKeyChain;

.field final synthetic val$keys:Ljava/util/List;

.field final synthetic val$registration:Lorg/bitcoinj/utils/ListenerRegistration;


# direct methods
.method constructor <init>(Lorg/bitcoinj/wallet/BasicKeyChain;Lorg/bitcoinj/utils/ListenerRegistration;Ljava/util/List;)V
    .locals 0

    .line 421
    iput-object p1, p0, Lorg/bitcoinj/wallet/BasicKeyChain$1;->this$0:Lorg/bitcoinj/wallet/BasicKeyChain;

    iput-object p2, p0, Lorg/bitcoinj/wallet/BasicKeyChain$1;->val$registration:Lorg/bitcoinj/utils/ListenerRegistration;

    iput-object p3, p0, Lorg/bitcoinj/wallet/BasicKeyChain$1;->val$keys:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 424
    iget-object v0, p0, Lorg/bitcoinj/wallet/BasicKeyChain$1;->val$registration:Lorg/bitcoinj/utils/ListenerRegistration;

    iget-object v0, v0, Lorg/bitcoinj/utils/ListenerRegistration;->listener:Ljava/lang/Object;

    check-cast v0, Lorg/bitcoinj/wallet/listeners/KeyChainEventListener;

    iget-object v1, p0, Lorg/bitcoinj/wallet/BasicKeyChain$1;->val$keys:Ljava/util/List;

    invoke-interface {v0, v1}, Lorg/bitcoinj/wallet/listeners/KeyChainEventListener;->onKeysAdded(Ljava/util/List;)V

    return-void
.end method
