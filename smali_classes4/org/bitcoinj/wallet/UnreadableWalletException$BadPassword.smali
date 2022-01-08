.class public Lorg/bitcoinj/wallet/UnreadableWalletException$BadPassword;
.super Lorg/bitcoinj/wallet/UnreadableWalletException;
.source "UnreadableWalletException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/wallet/UnreadableWalletException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BadPassword"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Password incorrect"

    .line 32
    invoke-direct {p0, v0}, Lorg/bitcoinj/wallet/UnreadableWalletException;-><init>(Ljava/lang/String;)V

    return-void
.end method
