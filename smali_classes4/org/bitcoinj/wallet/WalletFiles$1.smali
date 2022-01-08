.class Lorg/bitcoinj/wallet/WalletFiles$1;
.super Ljava/lang/Object;
.source "WalletFiles.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bitcoinj/wallet/WalletFiles;-><init>(Lorg/bitcoinj/wallet/Wallet;Ljava/io/File;JLjava/util/concurrent/TimeUnit;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bitcoinj/wallet/WalletFiles;

.field final synthetic val$wallet:Lorg/bitcoinj/wallet/Wallet;


# direct methods
.method constructor <init>(Lorg/bitcoinj/wallet/WalletFiles;Lorg/bitcoinj/wallet/Wallet;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lorg/bitcoinj/wallet/WalletFiles$1;->this$0:Lorg/bitcoinj/wallet/WalletFiles;

    iput-object p2, p0, Lorg/bitcoinj/wallet/WalletFiles$1;->val$wallet:Lorg/bitcoinj/wallet/Wallet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 87
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/WalletFiles$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lorg/bitcoinj/wallet/WalletFiles$1;->this$0:Lorg/bitcoinj/wallet/WalletFiles;

    invoke-static {v0}, Lorg/bitcoinj/wallet/WalletFiles;->access$000(Lorg/bitcoinj/wallet/WalletFiles;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return-object v2

    .line 94
    :cond_0
    iget-object v0, p0, Lorg/bitcoinj/wallet/WalletFiles$1;->val$wallet:Lorg/bitcoinj/wallet/Wallet;

    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Wallet;->getLastBlockSeenTime()Ljava/util/Date;

    move-result-object v0

    .line 95
    invoke-static {}, Lorg/bitcoinj/wallet/WalletFiles;->access$100()Lorg/slf4j/Logger;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/bitcoinj/wallet/WalletFiles$1;->val$wallet:Lorg/bitcoinj/wallet/Wallet;

    .line 96
    invoke-virtual {v5}, Lorg/bitcoinj/wallet/Wallet;->getLastBlockSeenHeight()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 97
    invoke-static {v0}, Lorg/bitcoinj/core/Utils;->dateTimeFormat(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "unknown"

    :goto_0
    aput-object v0, v4, v1

    const/4 v0, 0x2

    iget-object v1, p0, Lorg/bitcoinj/wallet/WalletFiles$1;->val$wallet:Lorg/bitcoinj/wallet/Wallet;

    .line 98
    invoke-virtual {v1}, Lorg/bitcoinj/wallet/Wallet;->getLastBlockSeenHash()Lorg/bitcoinj/core/Sha256Hash;

    move-result-object v1

    aput-object v1, v4, v0

    const-string v0, "Background saving wallet; last seen block is height {}, date {}, hash {}"

    .line 95
    invoke-interface {v3, v0, v4}, Lorg/slf4j/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    iget-object v0, p0, Lorg/bitcoinj/wallet/WalletFiles$1;->this$0:Lorg/bitcoinj/wallet/WalletFiles;

    invoke-static {v0}, Lorg/bitcoinj/wallet/WalletFiles;->access$200(Lorg/bitcoinj/wallet/WalletFiles;)V

    return-object v2
.end method
