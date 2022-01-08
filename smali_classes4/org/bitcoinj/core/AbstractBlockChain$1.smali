.class Lorg/bitcoinj/core/AbstractBlockChain$1;
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

.field final synthetic val$block:Lorg/bitcoinj/core/Block;

.field final synthetic val$filteredTxHashList:Ljava/util/List;

.field final synthetic val$filteredTxn:Ljava/util/Map;

.field final synthetic val$newBlockType:Lorg/bitcoinj/core/AbstractBlockChain$NewBlockType;

.field final synthetic val$newStoredBlock:Lorg/bitcoinj/core/StoredBlock;

.field final synthetic val$notFirst:Z

.field final synthetic val$registration:Lorg/bitcoinj/utils/ListenerRegistration;


# direct methods
.method constructor <init>(Lorg/bitcoinj/core/AbstractBlockChain;Lorg/bitcoinj/core/Block;Lorg/bitcoinj/core/AbstractBlockChain$NewBlockType;Ljava/util/List;Ljava/util/Map;Lorg/bitcoinj/core/StoredBlock;ZLorg/bitcoinj/utils/ListenerRegistration;)V
    .locals 0

    .line 632
    iput-object p1, p0, Lorg/bitcoinj/core/AbstractBlockChain$1;->this$0:Lorg/bitcoinj/core/AbstractBlockChain;

    iput-object p2, p0, Lorg/bitcoinj/core/AbstractBlockChain$1;->val$block:Lorg/bitcoinj/core/Block;

    iput-object p3, p0, Lorg/bitcoinj/core/AbstractBlockChain$1;->val$newBlockType:Lorg/bitcoinj/core/AbstractBlockChain$NewBlockType;

    iput-object p4, p0, Lorg/bitcoinj/core/AbstractBlockChain$1;->val$filteredTxHashList:Ljava/util/List;

    iput-object p5, p0, Lorg/bitcoinj/core/AbstractBlockChain$1;->val$filteredTxn:Ljava/util/Map;

    iput-object p6, p0, Lorg/bitcoinj/core/AbstractBlockChain$1;->val$newStoredBlock:Lorg/bitcoinj/core/StoredBlock;

    iput-boolean p7, p0, Lorg/bitcoinj/core/AbstractBlockChain$1;->val$notFirst:Z

    iput-object p8, p0, Lorg/bitcoinj/core/AbstractBlockChain$1;->val$registration:Lorg/bitcoinj/utils/ListenerRegistration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 637
    :try_start_0
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v7

    .line 638
    iget-object v0, p0, Lorg/bitcoinj/core/AbstractBlockChain$1;->val$block:Lorg/bitcoinj/core/Block;

    iget-object v1, p0, Lorg/bitcoinj/core/AbstractBlockChain$1;->val$newBlockType:Lorg/bitcoinj/core/AbstractBlockChain$NewBlockType;

    iget-object v2, p0, Lorg/bitcoinj/core/AbstractBlockChain$1;->val$filteredTxHashList:Ljava/util/List;

    iget-object v3, p0, Lorg/bitcoinj/core/AbstractBlockChain$1;->val$filteredTxn:Ljava/util/Map;

    iget-object v4, p0, Lorg/bitcoinj/core/AbstractBlockChain$1;->val$newStoredBlock:Lorg/bitcoinj/core/StoredBlock;

    iget-boolean v5, p0, Lorg/bitcoinj/core/AbstractBlockChain$1;->val$notFirst:Z

    iget-object v6, p0, Lorg/bitcoinj/core/AbstractBlockChain$1;->val$registration:Lorg/bitcoinj/utils/ListenerRegistration;

    iget-object v6, v6, Lorg/bitcoinj/utils/ListenerRegistration;->listener:Ljava/lang/Object;

    check-cast v6, Lorg/bitcoinj/core/listeners/TransactionReceivedInBlockListener;

    invoke-static/range {v0 .. v7}, Lorg/bitcoinj/core/AbstractBlockChain;->access$000(Lorg/bitcoinj/core/Block;Lorg/bitcoinj/core/AbstractBlockChain$NewBlockType;Ljava/util/List;Ljava/util/Map;Lorg/bitcoinj/core/StoredBlock;ZLorg/bitcoinj/core/listeners/TransactionReceivedInBlockListener;Ljava/util/Set;)V
    :try_end_0
    .catch Lorg/bitcoinj/core/VerificationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 641
    invoke-static {}, Lorg/bitcoinj/core/AbstractBlockChain;->access$100()Lorg/slf4j/Logger;

    move-result-object v1

    const-string v2, "Block chain listener threw exception: "

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
