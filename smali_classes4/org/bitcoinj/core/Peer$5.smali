.class Lorg/bitcoinj/core/Peer$5;
.super Ljava/lang/Object;
.source "Peer.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bitcoinj/core/Peer;->processTransaction(Lorg/bitcoinj/core/Transaction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/FutureCallback<",
        "Ljava/util/List<",
        "Lorg/bitcoinj/core/Transaction;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bitcoinj/core/Peer;

.field final synthetic val$tx:Lorg/bitcoinj/core/Transaction;

.field final synthetic val$wallet:Lorg/bitcoinj/wallet/Wallet;


# direct methods
.method constructor <init>(Lorg/bitcoinj/core/Peer;Lorg/bitcoinj/wallet/Wallet;Lorg/bitcoinj/core/Transaction;)V
    .locals 0

    .line 814
    iput-object p1, p0, Lorg/bitcoinj/core/Peer$5;->this$0:Lorg/bitcoinj/core/Peer;

    iput-object p2, p0, Lorg/bitcoinj/core/Peer$5;->val$wallet:Lorg/bitcoinj/wallet/Wallet;

    iput-object p3, p0, Lorg/bitcoinj/core/Peer$5;->val$tx:Lorg/bitcoinj/core/Transaction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 3

    .line 829
    invoke-static {}, Lorg/bitcoinj/core/Peer;->access$100()Lorg/slf4j/Logger;

    move-result-object v0

    iget-object v1, p0, Lorg/bitcoinj/core/Peer$5;->val$tx:Lorg/bitcoinj/core/Transaction;

    invoke-virtual {v1}, Lorg/bitcoinj/core/Transaction;->getHashAsString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Could not download dependencies of tx {}"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    .line 830
    invoke-static {}, Lorg/bitcoinj/core/Peer;->access$100()Lorg/slf4j/Logger;

    move-result-object v0

    const-string v1, "Error was: "

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 814
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lorg/bitcoinj/core/Peer$5;->onSuccess(Ljava/util/List;)V

    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/Transaction;",
            ">;)V"
        }
    .end annotation

    .line 818
    :try_start_0
    invoke-static {}, Lorg/bitcoinj/core/Peer;->access$100()Lorg/slf4j/Logger;

    move-result-object v0

    const-string v1, "{}: Dependency download complete!"

    iget-object v2, p0, Lorg/bitcoinj/core/Peer$5;->this$0:Lorg/bitcoinj/core/Peer;

    invoke-virtual {v2}, Lorg/bitcoinj/core/Peer;->getAddress()Lorg/bitcoinj/core/PeerAddress;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 819
    iget-object v0, p0, Lorg/bitcoinj/core/Peer$5;->val$wallet:Lorg/bitcoinj/wallet/Wallet;

    iget-object v1, p0, Lorg/bitcoinj/core/Peer$5;->val$tx:Lorg/bitcoinj/core/Transaction;

    invoke-virtual {v0, v1, p1}, Lorg/bitcoinj/wallet/Wallet;->receivePending(Lorg/bitcoinj/core/Transaction;Ljava/util/List;)V
    :try_end_0
    .catch Lorg/bitcoinj/core/VerificationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 821
    invoke-static {}, Lorg/bitcoinj/core/Peer;->access$100()Lorg/slf4j/Logger;

    move-result-object v0

    iget-object v1, p0, Lorg/bitcoinj/core/Peer$5;->this$0:Lorg/bitcoinj/core/Peer;

    invoke-virtual {v1}, Lorg/bitcoinj/core/Peer;->getAddress()Lorg/bitcoinj/core/PeerAddress;

    move-result-object v1

    iget-object v2, p0, Lorg/bitcoinj/core/Peer$5;->val$tx:Lorg/bitcoinj/core/Transaction;

    invoke-virtual {v2}, Lorg/bitcoinj/core/Transaction;->getHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v2

    const-string v3, "{}: Wallet failed to process pending transaction {}"

    invoke-interface {v0, v3, v1, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 822
    invoke-static {}, Lorg/bitcoinj/core/Peer;->access$100()Lorg/slf4j/Logger;

    move-result-object v0

    const-string v1, "Error was: "

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
