.class public interface abstract Lorg/bitcoinj/core/listeners/ReorganizeListener;
.super Ljava/lang/Object;
.source "ReorganizeListener.java"


# virtual methods
.method public abstract reorganize(Lorg/bitcoinj/core/StoredBlock;Ljava/util/List;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bitcoinj/core/StoredBlock;",
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/StoredBlock;",
            ">;",
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/StoredBlock;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bitcoinj/core/VerificationException;
        }
    .end annotation
.end method
