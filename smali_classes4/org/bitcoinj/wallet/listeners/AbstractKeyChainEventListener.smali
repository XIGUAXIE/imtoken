.class public Lorg/bitcoinj/wallet/listeners/AbstractKeyChainEventListener;
.super Ljava/lang/Object;
.source "AbstractKeyChainEventListener.java"

# interfaces
.implements Lorg/bitcoinj/wallet/listeners/KeyChainEventListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeysAdded(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/ECKey;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
