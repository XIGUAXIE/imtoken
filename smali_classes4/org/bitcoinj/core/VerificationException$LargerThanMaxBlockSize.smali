.class public Lorg/bitcoinj/core/VerificationException$LargerThanMaxBlockSize;
.super Lorg/bitcoinj/core/VerificationException;
.source "VerificationException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/core/VerificationException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LargerThanMaxBlockSize"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Transaction larger than MAX_BLOCK_SIZE"

    .line 41
    invoke-direct {p0, v0}, Lorg/bitcoinj/core/VerificationException;-><init>(Ljava/lang/String;)V

    return-void
.end method
