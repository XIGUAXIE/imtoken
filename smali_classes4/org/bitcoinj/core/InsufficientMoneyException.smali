.class public Lorg/bitcoinj/core/InsufficientMoneyException;
.super Ljava/lang/Exception;
.source "InsufficientMoneyException.java"


# instance fields
.field public final missing:Lorg/bitcoinj/core/Coin;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lorg/bitcoinj/core/InsufficientMoneyException;->missing:Lorg/bitcoinj/core/Coin;

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/core/Coin;)V
    .locals 2

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Insufficient money,  missing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/bitcoinj/core/Coin;->toFriendlyString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/bitcoinj/core/InsufficientMoneyException;-><init>(Lorg/bitcoinj/core/Coin;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/bitcoinj/core/Coin;Ljava/lang/String;)V
    .locals 0

    .line 40
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 41
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/core/Coin;

    iput-object p1, p0, Lorg/bitcoinj/core/InsufficientMoneyException;->missing:Lorg/bitcoinj/core/Coin;

    return-void
.end method
