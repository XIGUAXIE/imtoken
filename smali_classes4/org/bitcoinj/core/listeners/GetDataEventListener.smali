.class public interface abstract Lorg/bitcoinj/core/listeners/GetDataEventListener;
.super Ljava/lang/Object;
.source "GetDataEventListener.java"


# virtual methods
.method public abstract getData(Lorg/bitcoinj/core/Peer;Lorg/bitcoinj/core/GetDataMessage;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bitcoinj/core/Peer;",
            "Lorg/bitcoinj/core/GetDataMessage;",
            ")",
            "Ljava/util/List<",
            "Lorg/bitcoinj/core/Message;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method
