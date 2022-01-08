.class Lorg/bitcoinj/core/AbstractBlockChain$2;
.super Ljava/lang/Object;
.source "AbstractBlockChain.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bitcoinj/core/AbstractBlockChain;->informListenersForNewBlock(Lorg/bitcoinj/core/Block;Lorg/bitcoinj/core/AbstractBlockChain$NewBlockType;Ljava/util/List;Ljava/util/Map;Lorg/bitcoinj/core/StoredBlock;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bitcoinj/core/AbstractBlockChain;

.field final synthetic val$newBlockType:Lorg/bitcoinj/core/AbstractBlockChain$NewBlockType;

.field final synthetic val$newStoredBlock:Lorg/bitcoinj/core/StoredBlock;

.field final synthetic val$registration:Lorg/bitcoinj/utils/ListenerRegistration;


# direct methods
.method constructor <init>(Lorg/bitcoinj/core/AbstractBlockChain;Lorg/bitcoinj/core/AbstractBlockChain$NewBlockType;Lorg/bitcoinj/utils/ListenerRegistration;Lorg/bitcoinj/core/StoredBlock;)V
    .locals 0

    .line 658
    iput-object p1, p0, Lorg/bitcoinj/core/AbstractBlockChain$2;->this$0:Lorg/bitcoinj/core/AbstractBlockChain;

    iput-object p2, p0, Lorg/bitcoinj/core/AbstractBlockChain$2;->val$newBlockType:Lorg/bitcoinj/core/AbstractBlockChain$NewBlockType;

    iput-object p3, p0, Lorg/bitcoinj/core/AbstractBlockChain$2;->val$registration:Lorg/bitcoinj/utils/ListenerRegistration;

    iput-object p4, p0, Lorg/bitcoinj/core/AbstractBlockChain$2;->val$newStoredBlock:Lorg/bitcoinj/core/StoredBlock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 662
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/core/AbstractBlockChain$2;->val$newBlockType:Lorg/bitcoinj/core/AbstractBlockChain$NewBlockType;

    sget-object v1, Lorg/bitcoinj/core/AbstractBlockChain$NewBlockType;->BEST_CHAIN:Lorg/bitcoinj/core/AbstractBlockChain$NewBlockType;

    if-ne v0, v1, :cond_0

    .line 663
    iget-object v0, p0, Lorg/bitcoinj/core/AbstractBlockChain$2;->val$registration:Lorg/bitcoinj/utils/ListenerRegistration;

    iget-object v0, v0, Lorg/bitcoinj/utils/ListenerRegistration;->listener:Ljava/lang/Object;

    check-cast v0, Lorg/bitcoinj/core/listeners/NewBestBlockListener;

    iget-object v1, p0, Lorg/bitcoinj/core/AbstractBlockChain$2;->val$newStoredBlock:Lorg/bitcoinj/core/StoredBlock;

    invoke-interface {v0, v1}, Lorg/bitcoinj/core/listeners/NewBestBlockListener;->notifyNewBestBlock(Lorg/bitcoinj/core/StoredBlock;)V
    :try_end_0
    .catch Lorg/bitcoinj/core/VerificationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 665
    invoke-static {}, Lorg/bitcoinj/core/AbstractBlockChain;->access$100()Lorg/slf4j/Logger;

    move-result-object v1

    const-string v2, "Block chain listener threw exception: "

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
