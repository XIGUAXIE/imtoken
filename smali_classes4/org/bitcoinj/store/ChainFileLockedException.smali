.class public Lorg/bitcoinj/store/ChainFileLockedException;
.super Lorg/bitcoinj/store/BlockStoreException;
.source "ChainFileLockedException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lorg/bitcoinj/store/BlockStoreException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lorg/bitcoinj/store/BlockStoreException;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method
