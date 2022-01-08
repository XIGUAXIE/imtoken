.class Lorg/bitcoinj/kits/WalletAppKit$2;
.super Ljava/lang/Thread;
.source "WalletAppKit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bitcoinj/kits/WalletAppKit;->installShutdownHook()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bitcoinj/kits/WalletAppKit;


# direct methods
.method constructor <init>(Lorg/bitcoinj/kits/WalletAppKit;)V
    .locals 0

    .line 469
    iput-object p1, p0, Lorg/bitcoinj/kits/WalletAppKit$2;->this$0:Lorg/bitcoinj/kits/WalletAppKit;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 472
    :try_start_0
    iget-object v0, p0, Lorg/bitcoinj/kits/WalletAppKit$2;->this$0:Lorg/bitcoinj/kits/WalletAppKit;

    invoke-virtual {v0}, Lorg/bitcoinj/kits/WalletAppKit;->stopAsync()Lcom/google/common/util/concurrent/Service;

    .line 473
    iget-object v0, p0, Lorg/bitcoinj/kits/WalletAppKit$2;->this$0:Lorg/bitcoinj/kits/WalletAppKit;

    invoke-virtual {v0}, Lorg/bitcoinj/kits/WalletAppKit;->awaitTerminated()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 475
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
