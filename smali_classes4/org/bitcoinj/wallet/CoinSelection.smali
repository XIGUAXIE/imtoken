.class public Lorg/bitcoinj/wallet/CoinSelection;
.super Ljava/lang/Object;
.source "CoinSelection.java"


# instance fields
.field public gathered:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lorg/bitcoinj/core/TransactionOutput;",
            ">;"
        }
    .end annotation
.end field

.field public valueGathered:Lorg/bitcoinj/core/Coin;


# direct methods
.method public constructor <init>(Lorg/bitcoinj/core/Coin;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bitcoinj/core/Coin;",
            "Ljava/util/Collection<",
            "Lorg/bitcoinj/core/TransactionOutput;",
            ">;)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lorg/bitcoinj/wallet/CoinSelection;->valueGathered:Lorg/bitcoinj/core/Coin;

    .line 35
    iput-object p2, p0, Lorg/bitcoinj/wallet/CoinSelection;->gathered:Ljava/util/Collection;

    return-void
.end method
