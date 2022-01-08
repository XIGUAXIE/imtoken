.class public Lorg/bitcoinj/core/VerificationException$CoinbaseHeightMismatch;
.super Lorg/bitcoinj/core/VerificationException;
.source "VerificationException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/core/VerificationException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CoinbaseHeightMismatch"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 86
    invoke-direct {p0, p1}, Lorg/bitcoinj/core/VerificationException;-><init>(Ljava/lang/String;)V

    return-void
.end method
