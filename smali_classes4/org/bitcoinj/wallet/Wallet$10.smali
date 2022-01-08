.class Lorg/bitcoinj/wallet/Wallet$10;
.super Ljava/lang/Object;
.source "Wallet.java"

# interfaces
.implements Lcom/google/common/util/concurrent/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bitcoinj/wallet/Wallet;->doMaintenance(Lorg/spongycastle/crypto/params/KeyParameter;Z)Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/util/concurrent/FutureCallback<",
        "Lorg/bitcoinj/core/Transaction;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bitcoinj/wallet/Wallet;


# direct methods
.method constructor <init>(Lorg/bitcoinj/wallet/Wallet;)V
    .locals 0

    .line 5154
    iput-object p1, p0, Lorg/bitcoinj/wallet/Wallet$10;->this$0:Lorg/bitcoinj/wallet/Wallet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 2

    .line 5162
    invoke-static {}, Lorg/bitcoinj/wallet/Wallet;->access$400()Lorg/slf4j/Logger;

    move-result-object v0

    const-string v1, "Failed to broadcast key rotation tx"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 5154
    check-cast p1, Lorg/bitcoinj/core/Transaction;

    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Wallet$10;->onSuccess(Lorg/bitcoinj/core/Transaction;)V

    return-void
.end method

.method public onSuccess(Lorg/bitcoinj/core/Transaction;)V
    .locals 2

    .line 5157
    invoke-static {}, Lorg/bitcoinj/wallet/Wallet;->access$400()Lorg/slf4j/Logger;

    move-result-object v0

    const-string v1, "Successfully broadcast key rotation tx: {}"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
