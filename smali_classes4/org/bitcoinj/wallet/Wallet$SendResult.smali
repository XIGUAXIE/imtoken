.class public Lorg/bitcoinj/wallet/Wallet$SendResult;
.super Ljava/lang/Object;
.source "Wallet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/wallet/Wallet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SendResult"
.end annotation


# instance fields
.field public broadcast:Lorg/bitcoinj/core/TransactionBroadcast;

.field public broadcastComplete:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Lorg/bitcoinj/core/Transaction;",
            ">;"
        }
    .end annotation
.end field

.field public tx:Lorg/bitcoinj/core/Transaction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3679
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
