.class public Lorg/bitcoinj/wallet/Wallet$DustySendRequested;
.super Lorg/bitcoinj/wallet/Wallet$CompletionException;
.source "Wallet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/wallet/Wallet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DustySendRequested"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3889
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Wallet$CompletionException;-><init>()V

    return-void
.end method
