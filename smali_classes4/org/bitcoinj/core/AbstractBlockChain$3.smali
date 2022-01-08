.class Lorg/bitcoinj/core/AbstractBlockChain$3;
.super Ljava/lang/Object;
.source "AbstractBlockChain.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bitcoinj/core/AbstractBlockChain;->handleNewBestChain(Lorg/bitcoinj/core/StoredBlock;Lorg/bitcoinj/core/StoredBlock;Lorg/bitcoinj/core/Block;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bitcoinj/core/AbstractBlockChain;

.field final synthetic val$newBlocks:Ljava/util/LinkedList;

.field final synthetic val$oldBlocks:Ljava/util/LinkedList;

.field final synthetic val$registration:Lorg/bitcoinj/utils/ListenerRegistration;

.field final synthetic val$splitPoint:Lorg/bitcoinj/core/StoredBlock;


# direct methods
.method constructor <init>(Lorg/bitcoinj/core/AbstractBlockChain;Lorg/bitcoinj/utils/ListenerRegistration;Lorg/bitcoinj/core/StoredBlock;Ljava/util/LinkedList;Ljava/util/LinkedList;)V
    .locals 0

    .line 800
    iput-object p1, p0, Lorg/bitcoinj/core/AbstractBlockChain$3;->this$0:Lorg/bitcoinj/core/AbstractBlockChain;

    iput-object p2, p0, Lorg/bitcoinj/core/AbstractBlockChain$3;->val$registration:Lorg/bitcoinj/utils/ListenerRegistration;

    iput-object p3, p0, Lorg/bitcoinj/core/AbstractBlockChain$3;->val$splitPoint:Lorg/bitcoinj/core/StoredBlock;

    iput-object p4, p0, Lorg/bitcoinj/core/AbstractBlockChain$3;->val$oldBlocks:Ljava/util/LinkedList;

    iput-object p5, p0, Lorg/bitcoinj/core/AbstractBlockChain$3;->val$newBlocks:Ljava/util/LinkedList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 804
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/core/AbstractBlockChain$3;->val$registration:Lorg/bitcoinj/utils/ListenerRegistration;

    iget-object v0, v0, Lorg/bitcoinj/utils/ListenerRegistration;->listener:Ljava/lang/Object;

    check-cast v0, Lorg/bitcoinj/core/listeners/ReorganizeListener;

    iget-object v1, p0, Lorg/bitcoinj/core/AbstractBlockChain$3;->val$splitPoint:Lorg/bitcoinj/core/StoredBlock;

    iget-object v2, p0, Lorg/bitcoinj/core/AbstractBlockChain$3;->val$oldBlocks:Ljava/util/LinkedList;

    iget-object v3, p0, Lorg/bitcoinj/core/AbstractBlockChain$3;->val$newBlocks:Ljava/util/LinkedList;

    invoke-interface {v0, v1, v2, v3}, Lorg/bitcoinj/core/listeners/ReorganizeListener;->reorganize(Lorg/bitcoinj/core/StoredBlock;Ljava/util/List;Ljava/util/List;)V
    :try_end_0
    .catch Lorg/bitcoinj/core/VerificationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 806
    invoke-static {}, Lorg/bitcoinj/core/AbstractBlockChain;->access$100()Lorg/slf4j/Logger;

    move-result-object v1

    const-string v2, "Block chain listener threw exception during reorg"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
